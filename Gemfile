source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "rails", "~> 7.0.8"
gem "sprockets-rails"
gem "mysql2"
gem "puma", "~> 5.0"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "bcrypt", "~> 3.1.7"
gem "foreman", "~> 0.87.2"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem "pry-remote"
  gem "dotenv-rails", require: "dotenv/rails-now"
end

group :development do
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
