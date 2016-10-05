require 'spec_helper'

RSpec.describe ChampionsController, vcr: true do
  def app
    ChampionsController
  end

  describe '/' do
    it 'receive champions with image' do
      get '/'

      expect(last_response.body).to include('Gragas.png')
      expect(last_response.body).to include('Jax.png')
      expect(last_response.body).to include('Varus.png')
    end
  end

  describe '/champions/:id' do
    it 'receive champion with recommended' do
      get '/champion/26'

      expect(last_response.body).to include('Zilean.png')
      expect(last_response.body).to include('Zilean, o Guardião do Tempo')
      expect(last_response.body).to include('Beginner')
    end
  end
end
