# frozen_string_literal: true
source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }
gem 'rails', '5.1.3'

gem 'sass-rails', '~> 5.0.6'
gem 'sass-globbing', '~> 1.1.5'
gem 'slim-rails', '~> 3.1.2'
#gem 'sprockets-commoner', '~> 0.6.4'
gem 'autoprefixer-rails', '~> 7.1.2.6'
gem 'mysql2', '0.4.9'
gem "dotenv-rails", "~> 2.2.1"
gem 'draper', "~> 3.0.0"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'bullet'
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'pry-byebug'
end

group :development do
  gem 'html2slim'
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'annotate'
end
