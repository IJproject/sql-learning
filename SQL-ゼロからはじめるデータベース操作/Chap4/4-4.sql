/*
  トランザクション：1つ以上の更新処理を、まとめて呼ぶときの名称
  ※ トランザクションにおけるエラーハンドリングは、基本的にはアプリケーション側で行う
*/

BEGIN TRANSACTION;

-- ここに何かしらのSQL

COMMIT;    -- トランザクションに含まれる処理の実行
ROLLBACK;  -- ロールバック（取り消し）処理

/*
ACID特性；トランザクション処理の守るべきルール
A：Atomicity（原子性）：トランザクションは、全て成功するか、全て失敗するかのどちらか
C：Consistency（整合性）：トランザクションの実行前後で、データベースの整合性が保たれる
I：Isolation（独立性）：トランザクションは、他のトランザクションから独立して実行される
D：Durability（永続性）：トランザクションが成功した場合、その結果は永続的に保存される
*/
