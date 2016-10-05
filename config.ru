require './config/environment'

require './app/controllers/application_controller'
require './app/controllers/home_controller'

map('/') { run HomeController }
