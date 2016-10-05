class HomeController < ApplicationController
  get '/' do
    @champions = Riot::Champion.all(champData: 'image')

    erb :home
  end
end
