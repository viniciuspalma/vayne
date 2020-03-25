require 'rails_helper'

describe Riot::StaticData::Versions do
  describe '.call' do
    subject do
      VCR.use_cassette 'riot/static_data/versions' do
        described_class.new().call()
      end
    end

    it { expect(subject.size).to eq(341) }
  end
end
