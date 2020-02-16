source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '6.0.2'

gem 'pg'
gem 'puma'
gem 'rack-cors', require: 'rack/cors'

gem 'httparty'
gem 'graphql'

gem 'dry-types'
gem 'dry-struct'

group :development, :test do
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'dotenv-rails'
end

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'graphiql-rails'
end

group :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'codeclimate-test-reporter', platform: :mri, require: false
  gem 'vcr', require: false
  gem 'webmock', require: false
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
