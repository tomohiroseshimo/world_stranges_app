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

# world_stranges_app

## 概要
このアプリは世界中の様々な怪異譚の収集と概括を目的としています。

”world_stranges_app”では誰でも譚の閲覧が出来ます。ユーザー登録を行う事で怪異譚の投稿が可能になります。
あくまで様々な話を投稿閲覧することを楽しむアプリです。神話寓話、怪談実体験、創作を問わず不思議な世界の在り方を投稿してください。

## Features
This app is aimed at collecting and summarizing various mysterious stories around the world.

In "world_stranges_app", anyone can view the story.By registering as a user, you will be able to post Kaitantan.
It is an application to enjoy posting and browsing various stories.
Post mysterious worlds, regardless of myth, parable, ghost story, real experience, or creation.

## 開発環境
・Rails:6.0.2 　/・ruby:2.5.1 　/・データベース：Mysql 

## DB設計

### userテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|password|string|null: false|
|mailaddress|string|null: false|
|profile|text||
#### Association
- has_many :posts

### postテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|images|string||
|body|text|null: false|
|area|string|null: false|
|level|string||
|user_id|integer|null: false, foreign_key:true|
|category_id|integer|null: false, foreign_key:true|
#### Association
- belong_to :user
- belong_to :category

### categoryテーブル
|Column|Type|Options|
|------|----|-------|
|category_name|string|null: false|
|explantion|text|null: false|
#### Association
- has_many :posts
