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

ユーザー間で1:1のチャットを実装しましょう
非同期通信を用いて、チャットを作成すること
実装する機能

コントローラ
chatコントローラを追加し、showアクションでチャットを行うこと
モデル
roomモデル, chatモデル, user_roomモデルを作成すること
roomモデル: チャットルームの定義
chatモデル: チャットの定義
user_room: チャットルームとユーザーの関連付けを定義



ActionMailerとバッチ処理(whenever)を用いて、一日一回登録メールアドレス宛にメールを送ること
要件

メイラー
dailyメイラーを作成すること
メール本文は自由とする