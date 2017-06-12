source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'chosen-rails'

gem 'carrierwave'
gem 'carrierwave-dropbox'
gem "mini_magick"
gem 'devise'
gem 'mailboxer'
gem 'activeadmin'
gem 'will_paginate', ">=3.0.pre2"
gem 'kaminari'
gem 'rails-i18n'
gem 'devise-i18n'
gem 'filterrific'

gem 'bootstrap-sass'
gem 'bootstrap-will_paginate'
gem 'active_admin_flat_skin'
gem 'font-awesome-rails'

group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'rails', '~> 5.1.0' 
end 

group :development, :test do
  gem 'sqlite3'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]