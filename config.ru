require './config/environment'

Dir.glob('./app/controllers/*.rb').each { |file| require file }

map('/') { run HomeController }
