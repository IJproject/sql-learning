-- 命名ルール
-- 以下の3種類の文字が標準SQLにおいて認められている
-- ・半角アルファベット（大文字・小文字）
-- ・半角数字（0～9）
-- ・アンダースコア（_）

-- データベースの作成
CREATE DATABASE shop;

-- テーブルの作成
CREATE TABLE
  Shohin (
    shohin_id CHAR(4) NOT NULL, -- 文字列型、固定長文字列
    shohin_mei VARCHAR(100) NOT NULL, -- 文字列型、可変長文字列
    shohin_bunrui VARCHAR(32) NOT NULL, -- NOT NULL制約
    hanbai_tanka INTEGER, -- 整数型
    shiire_tanka INTEGER,
    torokubi DATE, -- 日付型
    PRIMARY KEY (shohin_id) -- 主キー制約
  );
