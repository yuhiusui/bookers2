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

Bookers2に住所検索機能を追加しましょう
jpostal.jpとgem jp_prefectureを使用して住所を検索しましょう
実装する機能

モデル
userモデルに郵便番号, 住所を格納するカラムを追加
ビュー
新規登録画面に郵便番号を入力するフォームを追加
郵便番号を入力後、郵便番号に対応する住所を住所フォームに自動入力させる
マイページに自分の住所の地図を表示 他人の詳細画面では住所を表示しないこと
Google Map APIを使用すること
APIトークンはgem dotenv-railsを使用し、環境変数として扱うこと