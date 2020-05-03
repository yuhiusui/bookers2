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

課題3の課題となります。
課題3
①Bookers2にいいね機能を追加しましょう
実装する機能

コントローラ
<!-- favoritesコントローラを追加 -->
<!-- createアクションを追加 -->
用途：いいねを作成する
<!-- destroyアクションを追加 -->
用途：いいねを削除する
いいねを作成, いいねを削除した後は、行う前にいた画面に遷移すること
モデル
<!-- favoriteモデルを追加 -->
用途：ユーザーと投稿のセットでいいねをしている状態とする
ユーザーは一つの投稿に一つしかいいねできないこと
ビュー
投稿一覧画面にいいね数, いいね(する, 外す)ボタンを追加
投稿詳細画面にいいね数, いいね(する, 外す)ボタンを追加
いいねされていない記事に対しては、いいね作成ボタンを表示させる
いいねされている記事に対しては、いいね削除ボタンを表示させる

②Bookers2にコメント機能を追加しましょう
実装する機能

コントローラ
<!-- book_commentsコントローラを追加 -->
<!-- createアクションを追加 -->
<!-- 用途：コメントを作成する -->
<!-- destroyアクションを追加 -->
用途：コメントを削除する
自分のコメントしか削除できないこと
コメント, コメント削除後は行う前の画面に遷移すること
モデル
<!-- book_commentモデルを追加 空のコメントは保存できないこと -->
ビュー
<!-- 投稿一覧画面にコメント数を追加 -->
投稿詳細画面に、投稿に対するコメント一覧, コメント数を追加
<!-- ユーザー詳細画面に、コメント数を追加 -->

<% if @book_id.favorited_by?(current_user) %>
<li>
    <%= link_to book_favorites_path(@book_id), method: :delete do %>
    <i class="fa fa-heart" aria-hidden="true" style="color: red;"></i>
    <%= @book_id.favorites.count %> いいね
    <% end %>
</li>
<% else %>
<li>
    <%= link_to book_favorites_path(@book_id), method: :post do %>
    <i class="fa fa-heart-o" aria-hidden="true"></i>
    <%= @book_id.favorites.count %> いいね
    <% end %>
</li>
<% end %>
