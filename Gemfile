# [Gemfile]

# RubyGemsのデフォルトのソース
source "https://rubygems.org"

# Rubyのバージョン指定
ruby "3.3.0"

# Railsとその他の依存関係のGemを指定
gem "rails", "~> 7.1.3", ">= 7.1.3.2"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "jbuilder"
gem "redis", ">= 4.0.1"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
gem "dotenv-rails", groups: [:development, :test]
gem "sidekiq"  # <- この位置でSidekiqのgemを指定する

# Webスクレイピング用のNokogiriとMechanize
gem "nokogiri"
gem "mechanize"

# クロンジョブ用のWhenever
gem "whenever", require: false

# 開発とテストグループ
group :development, :test do
  gem "debug", platforms: %i[ mri windows ]
end

# 開発グループ
group :development do
  gem "web-console"
end

# テストグループ
group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
