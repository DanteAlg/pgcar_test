require 'spec_helper'

RSpec.describe Riot::Client do
  it { expect(described_class::REGION).to eq('br') }
  it { expect(described_class::BASE_URL).to eq('https://br.api.pvp.net/api/lol/') }
end
