/*
  ウィンドウ関数：PARTITION BYによって、レコードを分類＋順序付けすること（それぞれのグループをウィンドウという）
  PARTITION BY：レコードを分類する
 */
-- ウィンドウ専用関数
SELECT
  shohinn_mei,
  shohin_bunrui,
  hanbai_tanka,
  RANK() OVER (
    PARTITION BY
      shohin_bunrui
    ORDER BY
      hanbai_tanka
  ) AS ranking
  -- これ以外にもウィンドウ専用関数として、DENSE_RANKやROW_NUMBERなどがある
FROM
  Shohin;

-- 集約関数をウィンドウ関数として使用する
SELECT
  shohinn_mei,
  shohin_bunrui,
  hanbai_tanka,
  SUM(hanbai_tanka) OVER (
    PARTITION BY
      shohin_bunrui
    ORDER BY
      hanbai_tanka
  )
FROM
  Shohin;

-- 移動平均
SELECT
  shohin_mei,
  shohin_bunrui,
  hanbai_tanka,
  AVG(hanbai_tanka) OVER (
    ORDER BY
      shohin_id ROWS BETWEEN 2 PRECEDING
      AND 2 FOLLOWING
  )
FROM
  Shohin;
