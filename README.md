# AtCoder 学習用 DevContainer

## Setup

1. リポジトリのクローン

   ```sh
   git clone {{This Repository URL}}
   ```

2. VS Code で開く

3. コンテナで開き直す

4. AtCoder へログイン

   ```sh
   acc login
   oj login https://beta.atcoder.jp/
   ```

5. atcoder-cli と online-judge-tools の連携確認
   ```sh
   acc check-oj
   ```

## Option

atcoder-cli の config.json を編集

```sh
acc config-dir
```
上記コマンドで表示されるパスにあるconfig.json を編集する
> ローカルの .config をコンテナにコピーしているので，コンテナで開く前に編集してもよい

## How to Use

1. 問題の回答用フォルダ・テストケースのダウンロード

   `acc`コマンドで回答用のディレクトリを作成する．

   > `contest-id`は AtCoder の任意のコンテストページ URL の`contests/`に続く文字列

   ```sh
   # acc new <<contest-id>>

   # ex: AtCoder Beginner Contest 307(https://atcoder.jp/contests/abc307)
   acc new abc307
   ```

   問題のリストから回答するものを選択する．
   `a`→Enter で全問一括選択も可能

   > A問題のみ作成し，後々B問題以降を解きたい場合は生成されたコンテストのディレクトリ上で `acc add` コマンド

   > または自分で任意の作業ディレクトリを作成し，`online-judge-tools` の `oj` コマンドでダウンロードすることもできる

2. コードを書く
   各問題ディレクトリに .py ファイル を作成

3. テストケース検証
   作成・編集したスクリプトが存在するディレクトリに移動し，テスト用コマンドを実行

   ```sh
   cd works/abc307/a

   # python3の場合
   oj t -c "python3 main.py" -d ./tests
   # or
   pytest # alias使用

   # pypy3の場合
   oj t -c "pypy3 main.py" -d ./tests 
   # or
   pypytest # alias
   ```

   実行結果を確認して，AC (accepted) になれば OK

4. 提出
   ```sh
   # python3の場合
   acc submit main.py
   # or 
   sbpy # alias

   # pypy3の場合
   acc submit main.py  -- --guess-python-interpreter pypy
   # or
   sbpypy #alias
   ```
