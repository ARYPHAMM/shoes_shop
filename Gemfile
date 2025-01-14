source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }


ruby '2.5.3'
gem 'bcrypt', '~> 3.1.7'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'devise'
gem 'stripe'
gem 'httparty'
gem 'hirb'
gem 'cocoon'
gem 'whenever', require: false
gem 'mini_magick'
gem 'carrierwave'
gem 'ckeditor', '4.2.4'
gem 'roo'
gem "roo-xls"
gem 'aws-sdk-s3'
gem 'active_storage_validations'
gem 'omniauth'
gem 'omniauth-facebook' 
gem 'omniauth-google-oauth2'
gem 'fog-aws'

#Bootstrap 4
gem 'bootstrap', '~> 4.3.1'
gem 'font-awesome-sass', '~> 5.6.1'
gem 'axlsx', git: 'https://github.com/randym/axlsx.git', ref: 'c8ac844'
gem 'axlsx_rails'
gem "chartkick"
gem 'groupdate'
gem 'simple_form'
gem 'bootstrap-sass-extras', '~> 0.0.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3', '~> 1.3.6'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
#gem 'rails_admin'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'geocoder'
# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
gem 'will_paginate','3.1.7'
gem 'will_paginate-bootstrap4'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem "letter_opener"
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
    gem 'mysql2', '>= 0.4.4', '< 0.6.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
