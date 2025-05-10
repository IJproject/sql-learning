/*
  ビュー：SELECT文を保存できる機能、名前付きクエリ
  ・データを保持するわけではなく、あくまでSELECT文を保持する
  ・ORDERBY句は使用できない
  ・ビュー経由でINSERT,UPDATE,DELETEは可能だが、整合性を保てる状態であることが条件
  ※ 多段ビューは避けるべき
*/

-- ビューの作成
CREATE VIEW
  ShohinSum (shohin_bunrui, shohin_count) AS
SELECT
  shohin_bunrui,
  COUNT(*)
FROM
  Shohin
GROUP BY
  shohin_bunrui

-- ビューを用いたクエリの実行
SELECT
  shohin_bunrui,
  shohin_count
FROM
  ShohinSum
WHERE
  shohin_count > 0

