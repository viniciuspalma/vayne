require 'rails_helper'

describe PopulateChampions do
  describe '.call' do
    let(:champions_api) { Riot::StaticData::Champions }
    let(:champion_api) { Riot::StaticData::Champion }
    let(:champion) { create :champion, version: '1.1.1', api_id: 'Vayne' }

    it 'return champions created for each version' do
      allow(ChampionFactory).to receive(:call).and_return(champion)

      allow(champions_api).to receive_message_chain('new.call').and_return({
        data: {
          "Vayne": {
            name: 'Vayne',
            id: 'Vayne'
          }
        }
      })

      allow(champion_api).to receive_message_chain('new.call').and_return({
        data: {
          "Vayne": {
            name: 'Vayne',
            id: 'Vayne'
          }
        }
      })

      expect(described_class.(version: '1.1.1')).to eq([champion])
    end
  end
end
