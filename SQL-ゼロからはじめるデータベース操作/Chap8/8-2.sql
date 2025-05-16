/*
  GROUPING演算子：合計をレコード内に表示させることができる演算子
  ・ROOLUP関数：設定したグループごとの合計行を求める
  ・CUBE関数：設定したグループの全ての組み合わせの合計行を求める
  ・GROUPING SETS関数：指定したグループの合計行を求める
*/

SELECT
  shohin_bunrui,
  torokubi,
  SUM(hanbai_tanka) AS hanbai_tanka
FROM
  Shohin
GROUP BY
  ROLLUP(shohin_bunrui, torokubi)
