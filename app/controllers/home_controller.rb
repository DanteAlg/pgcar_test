class HomeController < ApplicationController
  get '/' do
    @champions = Riot::Champion.all

    erb :home
  end
end
