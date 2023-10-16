# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "bcrypt", "~> 3.1.7"
gem "bootsnap", require: false
gem "foreman", "~> 0.87.2"
gem "jbuilder"
gem "jsbundling-rails", "~> 1.1"
gem "mysql2"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.8"
gem "redis", "~> 4.0"
gem "sprockets-rails"
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development, :test do
  gem "dotenv-rails", require: "dotenv/rails-now"
  gem "pry-remote"
end

group :development do
  gem "rubocop", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "factory_bot"
  gem "rspec"
  gem "rspec-rails"
  gem "selenium-webdriver"
  gem "shoulda-matchers", "~> 5.0"
  gem "timecop"
  gem "webdrivers"
end
