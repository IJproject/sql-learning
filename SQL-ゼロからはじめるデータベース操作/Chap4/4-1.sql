/*
  INSERT；レコードの挿入
  ・（）で囲まれたものをリストと呼び、INSERT時には列リストと値リストを渡す
*/

INSERT INTO TempShohin                                 -- （架空のテーブル名）
  (shohin_id, shohin_mei, hanbai_tanka, hanbai_state)  -- 列リスト（hanbai_stateにはデフォルト値が設定されている想定）
VALUES
  (1, 'りんご', 100, DEFAULT);                          -- 値リスト
-- 以下のように列リストを省略することができる（分かりにくいとは思うが）
INSERT INTO TempShohin VALUES
  (1, 'りんご', 100, DEFAULT);

-- 他のテーブルのデータを使用してデータを挿入（INSERT-SELECT文）
INSERT INTO ShohinBunrui
  (shohin_bunrui, sum_hanbai_tanka)
SELECT
  shohin_bunrui, SUM(hanbai_tanka)
FROM
  Shohin
GROUP BY
  shohin_bunrui;
