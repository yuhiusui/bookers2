# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

①Bookers2に検索機能を追加しましょう
ヘッダー下部に検索窓を設置し、入力と一致する名前のユーザー・投稿を検索しましょう
実装する機能

コントローラ
searchコントローラ追加
searchアクション追加 用途：検索を行う
ビュー
ログインしている場合に限り、ヘッダーに検索窓・検索ボタンを設置すること
検索結果表示画面を作成し、検索結果を表示すること
検索対象(ユーザーか投稿か)の選択かをプルダウンメニューで選択できること
② ①に検索手法を追加しましょう
実装する機能

ビュー
完全一致, 前方一致, 後方一致, 部分一致の検索手法をプルダウンメニューで選択できること