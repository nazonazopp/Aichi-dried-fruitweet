# README

# Name

Aichi-dried-fruitweet

# Overview

# Description

# Requirement

HTML,CSS,jQuery,Ruby,Rails,MySQL

# Usage

# Install

$ git clone

$ cd helloworld

$ bundle install

$ rails db:create

$ rails db:migrate

$ rails s

http://localhost:3000

# DB 設計

## users テーブル

| Column   | Type   | Options                  |
| -------- | ------ | ------------------------ |
| email    | string | null: false, unque: true |
| password | string | null: false              |
| name     | string | null: false, index: true |
| image    | string |

### Association

- has_many :comments
- has_many :posts

## posts テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user_id | references | null: false, foreign_key: true |
| text    | text       |                                |
| image   | string     |                                |

### Association

- belongs_to :user

## Comments テーブル

| Column  | Type       | Options                       |
| ------- | ---------- | ----------------------------- |
| user_id | references | null: false,foreign_key: true |
| comment | text       |                               |

### Association

- belongs_to :user

## Licence

[MIT](https://github.com/tcnksm/tool/blob/master/LICENCE)

## Author

[tcnksm](https://github.com/tcnksm)
