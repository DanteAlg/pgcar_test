require 'rubygems'
require 'bundler'
require './lib/riot'

Bundler.require(:default)                   # load all the default gems
Bundler.require(Sinatra::Base.environment)  # load all the environment specific gems

unless ENV['RACK_ENV'] == 'production'
  Dotenv.load
end
