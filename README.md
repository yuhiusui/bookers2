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
課題8
Bookers2にメール送信機能を追加しましょう
ActionMailerを用いて、新規登録したユーザーにthanksメールを送ること
実装する機能
メイラー
thanksメイラーを作成すること
メール本文は自由とする
コントローラ
deviseのregistrationsコントローラをオーバーライドし、新規登録に成功した後、thanksメイラーを呼び出すこと

課題9
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