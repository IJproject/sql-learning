/*
  集約関数：集計用の関数のこと
  ・COUNT：行数をカウントする
  ・SUM：合計を算出する
  ・AVG：平均を算出する
  ・MAX：最大値を算出する
  ・MIN：最小値を算出する
  ※ NULL値は計算前に弾かれるようになっている
 */
SELECT
  COUNT(*) AS '商品数',                              -- 商品数を算出（カウント）する
  COUNT(shohin_tanka) AS '商品単価数',                -- NULLのカラムは除外される
  SUM(hanbai_tanka) / SUM(shiire_tanka) AS '粗利率', -- それぞれのカラムの計算を算出する
  AVG(hanbai_tanka) AS '平均販売単価',                -- 平均を算出する
  MAX(hanbai_tanka) AS '最大販売単価',                -- 最大値を算出する
  MIN(hanbai_tanka) AS '最小販売単価'                 -- 最小値を算出する
  COUNT(DISTINCT shohin_bunrui) AS '商品分類数',      -- 重複を除外してカウントする
FROM
  Shohin
