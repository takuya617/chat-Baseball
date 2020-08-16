# README

# baseball-chat DB設計
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

アプリ名

BaseBallーChat

概要

・新規投稿機能ができる。（好きな選手、好きな球団、期待の選手、画像など）

・投稿者本人のみ投稿内容の変更、削除ができる。

・投稿に対してコメントをすることができる。

・お気に入りの投稿があれば、イイねを押すことができます。

・マイページがあり、自分の投稿内容が確認できる。

制作背景(意図)

・現在野球人気が低迷中で子供達の野球離れが叫ばれているなかで、一人でも多くの方に野球の魅力などを共有できる場所を作りたい。

・コロナの影響もあり、野球場に足を運ぶことができない野球ファンの方達に参加していただき野球の魅力などを語れる場所になって欲しい思い。

・自分が一番好きな物を通じて何かを作成してみたい思いと、開発に対するモチベショーンを高く維持し続ける為に。

・実装予定の内容

・イイね機能が非同期通信出来ていないので、非同期通信できるようにしたいです。

・投稿内容のイイねが多い順に表示ができるようにランキング機能な物を入れてみたいです。

DEMO

・Topページ

(https://user-images.githubusercontent.com/67043955/90331931-6f905b80-dff3-11ea-8803-be2e6979b2c5.gif)

・ユーザー登録画面

・新規投稿画面



・投稿詳細ページ


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

