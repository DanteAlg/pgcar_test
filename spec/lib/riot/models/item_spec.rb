require 'spec_helper'

RSpec.describe Riot::Item, vcr: true do
  describe '#all' do
    subject(:items) { described_class.all }

    it { expect(items.first.class).to eq(described_class) }
  end

  describe '#find' do
    subject(:item) { described_class.find(id: 1055, itemData: 'image') }
    let(:image_expected) do
      'http://ddragon.leagueoflegends.com/cdn/6.20.1/img/item/1055.png'
    end

    it { expect(item.id).to eq(1055) }
    it { expect(item.name).to eq('Lâmina de Doran') }

    it { expect(item.image_url).to eq(image_expected) }
  end
end
