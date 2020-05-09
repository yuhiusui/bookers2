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