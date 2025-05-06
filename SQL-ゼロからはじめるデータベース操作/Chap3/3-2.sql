/*
  GROUP BY：グループ化する関数
  ・集約キーにNULLがという含まれている場合、　Unknownとしてグループ化される
  ・ソート機能はない
*/
SELECT
  shohin_bunrui AS "商品分類",
  COUNT(*) AS "分類ごとの1000円以上の商品数"
FROM
  Shohin
WHERE
  hanbai_tanka > 1000
GROUP BY
  shohin_bunrui
