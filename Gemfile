source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
ruby '2.4.1'
gem 'rails', '~> 5.1.2'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'hirb'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'jquery-datatables-rails', git: 'git://github.com/rweng/jquery-datatables-rails.git', branch: 'master'
gem 'ajax-datatables-rails'
gem 'devise'
gem 'cancancan'
gem 'figaro'
gem 'fog-aws'
gem 'carrierwave'
gem 'gravatarify', '~> 3.1', '>= 3.1.1'
gem 'mini_magick'
gem 'activeadmin'
gem 'high_voltage'
gem 'jquery-rails'
group :development do
  gem 'better_errors'
  gem 'hub', :require=>nil
  gem 'rails_layout'
end
group :development, :test do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
  gem 'rails_12factor'
end
