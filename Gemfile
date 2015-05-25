source "https://rubygems.org"

###############
# General
###############
gem "rails", "4.2.1"
gem "turbolinks"
gem "foreman"

###############
# Assets
###############
gem "slim-rails", "~> 3.0.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.1.0"
gem "sass-rails", "~> 5.0"
gem "jquery-rails"
gem "bourbon"

###############
# Postal Services
###############
gem "canada-post-ruby", path: "../canada-post-ruby"

group :development, :test do
  gem "byebug"
  gem "web-console", "~> 2.0"
  # Keep rails running in background.
  gem "spring"
  gem "sqlite3"
  gem "rspec-rails", "~> 3.2.0"
  gem "factory_girl_rails"

  # For adding api.shipinator.local to hosts file.
  gem "ghost"
end

