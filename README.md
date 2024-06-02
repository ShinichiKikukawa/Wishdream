# README
説明文 このベースアプリは、Rails 7系で作成されています。Webpacker、Turbo、Turbolinksは使用しない方針です。また、Importmapも使用せず、Rails 5系のシンプルな仕様を基礎にしています。あえてアセットパイプラインのシンプルな仕様を採用しています。  そもそも、TurboやTurbolinks、Importmapのような独自路線には付き合わず、将来的にはReactやVue.jsでAPI開発を最初から視野に入れています。最強のORマッパーであるRailsのActiveRecordを使えるメリットのみを最大限享受しようという考え方であえてやっています。主に、トイアプリを即日作る目的で早さ全振りでベースアプリを作ってみました。

ローカル環境でも、docker環境でも、簡単な切り替えで対応できます。以下に簡単に記載します。



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
