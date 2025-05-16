-- CASE式を用いて条件分岐を行う
-- 行と列の変換でも効果を発揮する

SELECT
  shohin_mei,
  CASE
    WHEN shohin_kubun = 'A' THEN 'A区分'
    WHEN shohin_kubun = 'B' THEN 'B区分'
    WHEN shohin_kubun = 'C' THEN 'C区分'
    ELSE 'その他'
  END AS shohin_kubun
FROM
  Shohin;
