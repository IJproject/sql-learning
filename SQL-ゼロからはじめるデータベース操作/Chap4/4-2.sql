/*
  DELETE, TRUNCATE：レコードを削除する
*/

DELETE FROM Shohin
WHERE hanbai_tanka < 1000;  -- hanbai_tankaが1000以下のレコードを削除

TRUNCATE Shohin;  -- テーブル内の全レコードを削除
