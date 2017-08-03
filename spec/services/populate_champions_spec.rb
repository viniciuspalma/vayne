require 'rails_helper'

describe PopulateChampions do
  describe '.call' do
    before do
      champions_mock = double(Riot::StaticData::Champions)
      allow(Riot::StaticData::Champions).to receive(:new).and_return(champions_mock)
    end

    let(:versions_api) { Riot::StaticData::Versions }
    let(:champions_api) { Riot::StaticData::Champions }
    let(:champion) { create :champion, version: '1.1.1', api_id: '67' }

    it 'return champions created for each version' do
      allow(ChampionFactory).to receive(:call).and_return(champion)

      allow(champions_api).to receive_message_chain('new.call').and_return({
        data: {
          "67": {
            name: 'Vayne',
            id: '67'
          }
        }
      })

      expect(described_class.(version: '1.1.1')).to eq([champion])
    end
  end
end
