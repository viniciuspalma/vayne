require 'rails_helper'

describe Riot::StaticData::Versions do
  describe '.call' do
    let(:query) { { api_key: 'xxx' } }

    subject do
      VCR.use_cassette 'riot/static_data/versions' do
        described_class.new(query: query).call()
      end
    end

    it { expect(subject.size).to eq(171) }
  end
end
