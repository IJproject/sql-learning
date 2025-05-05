# SQL-learning

SQLの理解を深めるための学習用リポジトリ
基本的にはMySQLを用いて進める（PostgreSQLに興味はあるが、MySQLと操作感が思ったよりも異なる＋MySQLのプロジェクトしか関わらないため、MySQLを主に採用）

## 使用した書籍や資料

- ミック, 翔泳社,「SQL - ゼロからはじめるデータベース操作」(2016)

## 環境構築

練習用の最低限のMySQL環境をDockerを用いて作成する。

dockerfileを内容を基に、Dockerイメージを作成

```shell
$ docker build -t sql-learning .
```

作成されたDockerイメージを使用して、Dockerコンテナを作成

```shell
$ docker run --name sql-learning -p 3306:3306 -d sql-learning
```

コンテナ内に入り、bashを起動

```shell
$ docker exec -it sql-learning bash
```

コンテナ内でルートユーザとしてログイン
パスワードはDockerイメージ作成時に設定したもの

```shell
$ mysql -u root -p
```
