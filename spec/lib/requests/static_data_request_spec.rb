require 'spec_helper'

RSpec.describe Riot::StaticDataRequest do
  describe '#champions_data', vcr: true do
    subject(:data) { described_class.champions_data('image') }

    it do
      expect(data.first).to eq([
        'Jax', {
          'id' => 24,
          'key' => 'Jax',
          'name' => 'Jax',
          'title' => 'o Grão-Mestre das Armas',
          'image' => {
            'full' => 'Jax.png',
            'sprite' => 'champion1.png',
            'group' => 'champion',
            'x' =>48,
            'y' =>48,
            'w' =>48,
            'h' =>48
          }
        }
      ])
    end

    it { expect(data.count).to eq(133) }
  end
end
