# README

## アプリ名

chat-Baseball

## 機能紹介

・新規投稿機能ができる。（好きな選手、好きな球団、期待の選手、画像）

・投稿者本人のみ投稿内容の変更、削除ができる。

・投稿に対してコメントをすることができる。

・お気に入りの投稿があれば、イイねを押すことができます。

・マイページがあり、自分の投稿内容が確認できる。

## 制作背景(意図)

・現在野球人気が低迷中で子供達の野球離れが叫ばれているなかで、一人でも多くの方に野球の魅力などを共有できる場所を作りたい。

・コロナの影響もあり、野球場に足を運ぶことができない野球ファンの方達に参加していただき野球の魅力などを語れる場所になって欲しい思い。

・自分が一番好きな物を通じて何かを作成してみたい思いと、開発に対するモチベショーンを高く維持し続ける為に。

## DEMO

・Topページ

(https://user-images.githubusercontent.com/67043955/90331931-6f905b80-dff3-11ea-8803-be2e6979b2c5.gif)

・ユーザー登録画面

https://i.gyazo.com/a3dee6c8cf91ea91cbfaae793bf054cd.jpg

・ログイン画面

https://i.gyazo.com/049463b2dbeeaed3559117996dcbd49e.jpg

・新規投稿画面

https://i.gyazo.com/f3d78df976fc8876dd6da2bd7f85e0d0.jpg

・投稿詳細ページ

(https://user-images.githubusercontent.com/67043955/90332325-da8f6180-dff6-11ea-8460-d5d5109cbfce.gif)

# DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null:false|

### Association
- has_many:posts
- has_many:movies
- has_many:comments
- has_many:japans
- has_many:likes

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|player|text||
|team|text||
|Recommended-player|text||
|image|text||

### Association
- belongs_to :user
- has_many:comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
|posts_id|string|null: false|
|movies_id|string|null: false|
|user_id|string|null:false|

### Association
- belongs_to :post
- belongs_to :movie
- belongs_to :user

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|string|null:false|
|japan_id|string|null:false|

### Association
- belongs_to :user
- belongs_to :japan

## 実装予定の内容

・イイね機能が非同期通信出来ていないので、非同期通信できるようにしたいです。

・投稿内容のイイねが多い順に表示ができるようにランキング機能な物を入れてみたいです。
