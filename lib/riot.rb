require 'json'
require 'httparty'

unless ENV['RACK_ENV'] == 'production'
  require 'dotenv'
  Dotenv.load
end

# Requests
require_relative 'riot/requests/client'
require_relative 'riot/requests/static_data_request'

