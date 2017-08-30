# frozen_string_literal: true
source 'https://rubygems.org'

git_source(:github) {|repo_name| 'https://github.com/#{repo_name}' }
gem 'rails', '5.1.3'

gem "therubyracer", platforms: :ruby
gem 'uglifier', '~> 3.2.0'
gem 'sass-rails', '~> 5.0.6'
gem 'sass-globbing', '~> 1.1.5'
gem 'slim-rails', '~> 3.1.2'
#gem 'sprockets-commoner', '~> 0.6.4'
gem 'autoprefixer-rails', '~> 7.1.2.6'
gem 'mysql2', '0.4.9'
gem 'dotenv-rails', '~> 2.2.1'
gem 'draper', '~> 3.0.0'
gem 'kaminari', '~> 1.0.1'
gem 'cells-rails', '~> 0.0.8'
gem 'cells-slim', '~> 0.0.5'
gem 'jquery-rails', '~> 4.3.1'
gem 'meta-tags', '~> 2.6.0'
gem 'settingslogic', '~> 2.0.9'
gem 'unicorn', '~> 5.3.0'
gem 'activeadmin', '~> 1.1.0'
gem 'aws-sdk', '~> 3.0.0'

group :development, :test do
  # deploy
  gem 'capistrano', '~> 3.9.0'
  gem 'capistrano-bundler', '~> 1.2.0'
  gem 'capistrano-rbenv', '~> 2.1.1'
  gem 'capistrano3-unicorn', '~> 0.2.1'
  gem 'capistrano-rails', '~> 1.3.0'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'bullet'
  gem 'factory_girl_rails'
end

group :development do
  gem 'html2slim'
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'annotate'
end

gem 'pry-rails'
gem 'pry-byebug'
