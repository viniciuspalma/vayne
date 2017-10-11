source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.2'

gem 'pg'
gem 'puma', '~> 3.7'
gem 'rack-cors', require: 'rack/cors'

gem 'httparty'
gem 'graphql'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.5'
  gem 'dotenv-rails'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'graphiql-rails'
end

group :test do
  gem 'factory_girl_rails', '~> 4.0'
  gem 'faker'
  gem 'database_cleaner'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'simplecov', require: false
  gem 'codeclimate-test-reporter', platform: :mri, require: false
  gem 'vcr', require: false
  gem 'webmock', require: false
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
