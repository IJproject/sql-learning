-- 列に別名をつける（＋定数列を出力）
SELECT
  '商品' AS "商品",
  shohin_id AS id,
  shohin_mei AS "商品名",
FROM
  Shohin;

-- 重複を取り除く
SELECT DISTINCT
  shohin_bunrui AS "商品分類",
FROM
  Shohin;

-- 行の選択
SELECT
  shohin_id AS id,
  shohin_mei AS "商品名",
FROM
  Shohin
WHERE
  shohin_mei = 't-shirt';
