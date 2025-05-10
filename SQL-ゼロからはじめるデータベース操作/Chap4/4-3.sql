/*
UPDATR：レコードの更新
 */
UPDATE Shohin
SET
  hanbai_tanka = hanbai_tanka * 1.5,
  shiire_tanka = shiire_tanka * 1.5,  -- 変更内容を複数指定することができる
WHERE
  shohin_bunrui = 'kitchenware'
