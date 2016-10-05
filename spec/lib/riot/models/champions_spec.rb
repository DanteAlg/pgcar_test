require 'spec_helper'

RSpec.describe Riot::Champion, vcr: true do
  describe '#all' do
    subject(:champions) { described_class.all }

    it { expect(champions.first.class).to eq(described_class) }
  end

  describe '#find', vcr: { cassette_name: '' } do
    subject(:champion) { described_class.find(id: 24, champData: 'image') }
    let(:image_expected) do
      'http://ddragon.leagueoflegends.com/cdn/6.20.1/img/champion/Jax.png'
    end

    let(:item_image_expected) do
      'http://ddragon.leagueoflegends.com/cdn/6.20.1/img/item/1055.png'
    end

    it { expect(champion.id).to eq(24) }
    it { expect(champion.name).to eq('Jax') }
    it { expect(champion.title).to eq('o Grão-Mestre das Armas') }

    it { expect(champion.image_url).to eq(image_expected) }

    it { expect(champion.item_image_url(1055)).to eq(item_image_expected) }
  end
end
