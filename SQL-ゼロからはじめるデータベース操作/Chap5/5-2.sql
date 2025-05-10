/*
サブクエリ；ビューの定義をそのままFROM句に持ち込んだようなもの、使い捨てのビュー、一段下のクエリ
・サブクエリの段数はなるべく少なく保つべき
・使い捨てとはいえ、名前はつけておいた方が読みやすいクエリになる
・WHERE句内では集約関数が使えないのだが、サブクエリ（スカラ・サブクエリ）を用いれば可能
 */

-- 5-1.sqlでの記述をサブクエリ形式で書き換える
SELECT
  shohin_bunrui,
  shohin_count
FROM
  (
    SELECT
      shohin_bunrui,
      COUNT(*) AS shohin_count
    FROM
      Shohin
    GROUP BY
      shohin_bunrui
  ) AS ShohinSum
WHERE
  shohin_count > 0

-- スカラサブクエリ
SELECT
  shohin_bunrui,
  AVG(hanbai_tanka)
FROM
  Shohin
GROUP BY
  shohin_bunrui
HAVING
  AVG(hanbai_tanka) > (
    SELECT
      AVG(hanbai_tanka)
    FROM
      Shohin
  )
