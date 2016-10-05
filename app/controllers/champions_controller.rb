class ChampionsController < ApplicationController
  get '/' do
    @champions = Riot::Champion.all(champData: 'image')

    erb :home
  end

  get '/champion/:id' do
    @champion = Riot::Champion.find(id: params[:id], champData: 'image,recommended')

    erb :champion
  end

  get '/champion/:id/recommended/:build' do
    @champion = Riot::Champion.find(id: params[:id], champData: 'image')
    erb :build
  end
end
