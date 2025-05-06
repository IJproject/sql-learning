/*
  HAVING：集約したグループに対して条件指定を行う
  ちなみにWHERE句との差でいうと、
  WHERE句：「行」に対して条件を指定するのに対し、
  HAVING句：「グループ」に対して条件を指定する
*/

SELECT
  shohin_bunrui AS "商品分類",
  COUNT(*)
FROM
  Shohin
GROUP BY
  shohin_bunrui
HAVING
  COUNT(*) > 1
