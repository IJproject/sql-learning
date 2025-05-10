/*
  ORDER BY；検索結果の並び替え
  ・NULL値は無視される（末尾か先頭にまとめられる）
*/

SELECT
  shohin_id AS "商品ID",
  shohin_mei AS "商品名",
FROM
  Shohin
ORDER BY
  hanbai_tanka DESC,    -- 指定しなければデフォルトでASCになる
  shohin_id DESC;       -- hanbai_tankaが同じ場合はshohin_idで降順に並び替え


SELECT
  shohin_bunrui AS "商品分類",
  COUNT(*) AS "分類ごとの1000円以上の商品数"
FROM
  Shohin
WHERE
  hanbai_tanka > 1000
GROUP BY
  shohin_bunrui
ORDER BY
  COUNT(*);   -- 集約関数を指定することも可能
