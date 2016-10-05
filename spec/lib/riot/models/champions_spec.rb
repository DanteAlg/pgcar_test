require 'spec_helper'

RSpec.describe Riot::Champion do
  describe '#all', vcr: true do
    subject(:champions) { described_class.all }

    it { expect(champions.first.class).to eq(described_class) }
  end
end
