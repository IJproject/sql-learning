/*
  集合演算：テーブル、ビュー、クエリの間での四則演算
  UNION：和集合
  INTERSECT：積集合
  EXCEPT：差集合
 */
 
SELECT
  shohin_id, shohin_mei
FROM
  Shohin
UNION
SELECT
  shohin_id, shohin_mei
FROM
  Shohin2
