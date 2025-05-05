/* 算術演算子
 ・SELECT文の中に式を書くことができる
 ・NULLに対する演算は全てNULLになる
*/
SELECT
  hanbai_tanka * 2 AS "販売単価 x2",
FROM
  Shohin;

/*
  比較演算子
  ・WHERE句内の条件式に使用し、以下のように不等式を表現する（挙げたもの以外は、他のプログラミング言語と同じかと）
    ・等しいことを「=」
    ・等しくないことを「<>」
  ・DATE型のデータは、直感的に不等号で表現することが可能
  ・NULL型は大小の評価ができないので、検索条件に出てこない
  ・文字列に対しての大小は、辞書順で評価される。
*/
SELECT
  shohin_mei AS "商品名",
  shohin_bunrui AS "商品分類",
FROM
  Shohin
WHERE
  -- shohin_tanka = 500    -- 500円の商品
  shohin_tanka <> 500      -- 500円以外の商品
  -- torokubi IS NULL      -- 登録日がNULLのもの
  -- torokubi IS NOT NULL  -- 登録日がNULLでないもの
;
