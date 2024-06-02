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


以下にdocker環境用でのdatabase．ymlの記述を記載します。

default: &default
  adapter: postgresql
  encoding: unicode
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: postgres
  password: <%= ENV['WISHDREAM_DATABASE_PASSWORD'] %>
  host: db

development:
  <<: *default
  database: wishdream_development

test:
  <<: *default
  database: wishdream_test

production:
  <<: *default
  database: wishdream_production
  username: wishdream
  password: <%= ENV['WISHDREAM_DATABASE_PASSWORD'] %>
