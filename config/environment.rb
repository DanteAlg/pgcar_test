require 'rubygems'
require 'bundler'

Bundler.require(:default)                   # load all the default gems
Bundler.require(Sinatra::Base.environment)  # load all the environment specific gems

if ENV['RACK_ENV'] == 'development'
  Dotenv.load
end
