/*
  結合（JOIN）：テーブル同士をくっつける
  内部結合（INNER JOIN）：テーブルの中に、別のテーブルをくっつける（対応付けられないデータは除く）
  外部結合（OUTER JOIN）：テーブルの中に、別のテーブルをくっつける（対応付けられないデータも含める）
  直積（CROSS JOIN）
*/

SELECT
  TS.tempo_id, TS.tenpo_mei, S.shohin_id, S.shohin_mei, S.hanbai_tanka
FROM
  TenpoShohin AS TS INNER JOIN Shohin AS S
ON
  TS.shohin_id = S.shohin_id

-- RIGHTとLEFTは、レコード数を固定する方を指定する
SELECT
  TS.tempo_id, TS.tenpo_mei, S.shohin_id, S.shohin_mei, S.hanbai_tanka
FROM
  Shohin AS S LEFT OUTER JOIN TenpoShohin AS TS
ON
  TS.shohin_id = S.shohin_id

-- 関係除算（P.249-252）
