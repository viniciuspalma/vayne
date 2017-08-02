require 'rails_helper'

describe PopulateChampions do
  describe '.call' do
    before do
      versions_mock = double(Riot::StaticData::Versions)
      champions_mock = double(Riot::StaticData::Champions)

      allow(Riot::StaticData::Versions).to receive(:new).and_return(versions_mock)
      allow(Riot::StaticData::Champions).to receive(:new).and_return(champions_mock)
    end

    let(:versions_api) { Riot::StaticData::Versions }
    let(:champions_api) { Riot::StaticData::Champions }
    let(:champion) { build :champion }

    it 'return champions created for each version' do
      allow(ChampionFactory).to receive(:call).and_return(champion)

      allow(versions_api).to receive_message_chain('new.call').and_return(['1.1.1', '1.2.1'])
      allow(champions_api).to receive_message_chain('new.call').and_return({
        data: {
          "67": {
            name: 'Vayne'
          }
        }
      })

      expect(described_class.(season: 1)).to eq([[champion], [champion]])
    end
  end
end
