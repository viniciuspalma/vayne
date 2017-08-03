require 'rails_helper'

describe SeasonVersions do
  describe '.call' do
    before do
      versions_mock = double(Riot::StaticData::Versions)
      allow(Riot::StaticData::Versions).to receive(:new).and_return(versions_mock)
    end

    let(:versions_api) { Riot::StaticData::Versions }

    it 'return champions created for each version' do
      allow(versions_api).to receive_message_chain('new.call').and_return(
        ['10.1.1', '9.1.1', '8.1.1', '7.2.1', '7.1.1']
      )

      expect(described_class.(season: 7)).to eq(['7.2.1', '7.1.1'])
    end
  end
end
