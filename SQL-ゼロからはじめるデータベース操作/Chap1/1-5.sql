-- テーブルの削除
DROP TABLE Shohin;

-- テーブル定義の変更
-- -- カラムの追加
ALTER TABLE Shohin ADD COLUMN shohin_mei_kana VARCHAR(100);
ALTER TABLE Shohin ADD COLUMN (shohin_mei_kana VARCHAR(100), shohin_mei_english VARCHAR(100));
-- -- カラムの削除
ALTER TABLE Shohin DROP COLUMN shohin_mei_kana;
ALTER TABLE Shohin DROP COLUMN (shohin_mei_kana, shohin_mei_english);

-- データ登録
INSERT INTO Shohin VALUES ('0001', 'Tシャツ', '衣服', 1000, 500, '2009-09-20');
INSERT INTO Shohin VALUES ('0002', '穴あけパンチ', '事務用品', 500, 320, '2009-09-11');
INSERT INTO Shohin VALUES ('0003', 'カッターシャツ', '衣服', 4000, 2800, NULL);
INSERT INTO Shohin VALUES ('0004', '包丁', 'キッチン用品', 3000, 2800, '2009-09-20');
INSERT INTO Shohin VALUES ('0005', '圧力鍋', 'キッチン用品', 6800, 5000, '2009-01-15');
INSERT INTO Shohin VALUES ('0006', 'フォーク', 'キッチン用品', 500,  NULL, '2009-09-20');
INSERT INTO Shohin VALUES ('0007', 'おろしがね', 'キッチン用品', 880, 790, '2008-04-28');
INSERT INTO Shohin VALUES ('0008', 'ボールペン', '事務用品', 100, NULL, '2009-11-11');

