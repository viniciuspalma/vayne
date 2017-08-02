require 'rails_helper'

describe Riot::StaticData::Champions do
  describe '.call' do
    let(:query) { { api_key: 'xxx' } }

    subject do
      VCR.use_cassette 'riot/static_data/champions' do
        described_class.new(query: query).call(version: '7.14.1')
      end
    end

    it { expect(subject[:version]).to eq('7.14.1') }
    it { expect(subject[:data].size).to eq(137) }
  end
end
