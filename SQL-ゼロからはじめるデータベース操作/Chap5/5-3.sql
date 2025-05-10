/*
  相関サブクエリ：テーブルの一部のレコードに依存した比較を行いたい場合に使用するクエリ
*/

-- スカラ・サブクエリになっていないので、相関サブクエリを使用する
SELECT
  shohin_id,
  shohin_mei,
  hanbai_tanka
FROM
  Shohin AS S1
WHERE
  hanbai_tanka > (
    SELECT
      AVG(hanbai_tanka)
    FROM
      Shohin AS S2
    WHERE
      S1.shohin_bunrui = S2.shohin_bunrui  -- この行が相関サブクエリ
    GROUP BY
      shohin_bunrui
  );
