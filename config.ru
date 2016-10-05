require './config/environment'

require './app/controllers/application_controller'
require './app/controllers/champions_controller'

map('/') { run ChampionsController }
