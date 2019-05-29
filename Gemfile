source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.5'

# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'

# Use Puma as the app server
gem 'puma', '~> 3.7'

# JSONAPI Resources
gem 'jsonapi-resources'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

# Knock for JWT Authentication
gem 'knock'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  gem 'brakeman'
  gem 'rubocop'
  gem 'bundler-audit'
  gem 'faker'
  gem 'annotate'

  # Debugging tools
  gem 'pry-rails'
  gem 'pry-byebug'

  # Coverage
  gem 'simplecov', require: false

  # Testing
  gem 'shoulda'
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 3.7', '>= 3.7.2'
end

group :test do
  gem 'database_cleaner'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
