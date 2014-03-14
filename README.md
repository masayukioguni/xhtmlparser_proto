##これはなに？

CSSのパースをbison/flexやってみるためのプロトタイプ


##入っているもの

* css.y 

    * bison用の定義

* css.l

    * flex用の定義

* build.sh

    * C用プログラム作成

* debug_build.sh

    * デバッグ用情報出力を含むC用プログラム作成

* css
   
    * 実験用cssを入れておく

* css_minify.rb 
	* cssの圧縮する
  
  cat ./css/test.css | ./css_minify.rb 

## ビルド方法

### 通常ビルド

* build.shを実行

### デバッグビルド

* debug_build.shを実行

## 自動生成ファイルの説明

### css.tab.*

* bisonコマンド実行時に作成されるソース

### lex.yy.c

* flexコマンド実行時に作成されるソース

### css.output

* パーサの状態遷移ルールが書かれている。

##あわせて読みたい

http://guppy.eng.kagawa-u.ac.jp/2009/ProgLang/bison-1.2.8/bison-ja_toc.html

## プルリクエストするには?

1. Fork it!
2. 機能別ブランチを作る (`git checkout -b my-new-feature`)
3. 変更をコミットする (`git commit -am 'Add some feature'`)
4. リモートにpushする (`git push origin my-new-feature`)
5. Pull Request お願いします！

## Todo
* テストどうしよう
    * 出力した結果とおそらく正しいであろう結果を保存したファイルを比較する？
 
