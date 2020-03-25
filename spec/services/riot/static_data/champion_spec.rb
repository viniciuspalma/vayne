require 'rails_helper'

describe Riot::StaticData::Champion do
  describe '.call' do
    subject do
      VCR.use_cassette 'riot/static_data/champion' do
        described_class.new().call(id: 'Vayne', version: '7.14.1')
      end
    end

    it { expect(subject[:id]).to eq('Vayne') }
    it { expect(subject[:skins].size).to eq(8) }
    it { expect(subject[:spells].size).to eq(4) }
  end
end
