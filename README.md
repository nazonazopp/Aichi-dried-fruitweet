# README

# Name

Aichi-dried-fruitweet

![スクリーンショット 2021-08-01 21 26 13](https://user-images.githubusercontent.com/61644930/134809237-522b9abe-acce-47fd-87be-41f0f0f1169e.png)

# Overview

愛知県で気になるドライフルーツを投稿して紹介するアプリケーションです。

# Requirement

HTML,CSS,jQuery,Ruby,Rails,MySQL

# Usage

### タイトル画面

![スクリーンショット 2021-08-01 21 24 25](https://user-images.githubusercontent.com/61644930/134809319-a884d4a3-5de2-4d6b-8719-47d618c55315.png)

### 新規登録画面

![スクリーンショット 2021-08-01 21 25 03](https://user-images.githubusercontent.com/61644930/134809355-7b3dafbb-133d-45bd-866b-f79998697128.png)

### ログイン画面

![スクリーンショット 2021-08-01 21 25 13](https://user-images.githubusercontent.com/61644930/134809389-c7a7a933-9002-4f27-bdd9-4b42d90c52b0.png)

### 投稿画面

![スクリーンショット 2021-08-01 21 27 02](https://user-images.githubusercontent.com/61644930/134809613-66c7a2af-8052-46e8-885f-c3da75f1cfec.png)

### コメント画面

![スクリーンショット 2021-09-27 23 40 18](https://user-images.githubusercontent.com/61644930/134931886-3278903d-c87e-4d6d-8ff6-375124ad7fd8.png)

### 編集画面

![スクリーンショット 2021-09-27 23 40 49](https://user-images.githubusercontent.com/61644930/135095104-8b86583d-21fe-4160-ae01-79185dbd266f.png)

### 投稿削除画面

![スクリーンショット 2021-08-01 21 32 58](https://user-images.githubusercontent.com/61644930/134809723-15a11684-0000-4c02-aa7e-c306db572e71.png)

### 投稿した人がログインした画面

![スクリーンショット 2021-09-27 23 43 23](https://user-images.githubusercontent.com/61644930/134933483-408b7762-8d91-4840-9553-b94a501d9e7d.png)

### 投稿していない人がログインした画面

![スクリーンショット 2021-09-27 23 38 47](https://user-images.githubusercontent.com/61644930/134933569-997714f9-c3cc-44da-a80d-651716eca898.png)

# Install

$ git clone https://github.com/nazonazopp/Aichi-dried-fruitweet.git

$ cd helloworld

$ bundle install

$ rails db:create

$ rails db:migrate

$ rails s

# DB 設計

## users テーブル

| Column   | Type   | Options                  |
| -------- | ------ | ------------------------ |
| email    | string | null: false, unque: true |
| password | string | null: false              |
| name     | string | null: false, index: true |

### Association

- has_many :comments
- has_many :posts

## posts テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user_id | references | null: false, foreign_key: true |
| title   | string     |                                |
| text    | text       |                                |
| image   | text       |                                |

### Association

- belongs_to :user
- has_many :comments

## Comments テーブル

| Column  | Type       | Options                       |
| ------- | ---------- | ----------------------------- |
| user_id | references | null: false,foreign_key: true |
| post_id | references | null: false,foreign_key: true |
| comment | text       |                               |

### Association

- belongs_to :user
- belongs_to :post

## Licence

[MIT](https://github.com/tcnksm/tool/blob/master/LICENCE)

## Author

[tcnksm](https://github.com/tcnksm)
