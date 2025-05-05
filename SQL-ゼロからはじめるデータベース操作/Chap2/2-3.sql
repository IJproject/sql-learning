/*
  論理演算子
  ・NOT演算子
  ・AND演算子
  ・OR演算子
*/
SELECT
  shohin_mei AS "商品名",
  shohin_bunrui AS "商品分類",
FROM
  Shohin
WHERE
  -- NOT shohin_bunrui = 'kitchenware'  -- キッチン用品以外
  shohin_bunrui = 'kitchenware'
  AND shohin_tanka > 1000               -- 1000円以上の商品かつキッチン用品
  -- OR shohin_tanka < 500              -- 500円未満の商品か、キッチン用品

/*
  ・当たり前に、演算の優先順位付けに「()」を使用することができる
  ・NULLの真偽値はUnknown（三値論理）
*/
