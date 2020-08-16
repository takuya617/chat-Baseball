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

