require 'rails_helper'

describe VayneSchema do
  let(:context) { {} }
  let(:variables) { {} }
  let(:result) {
    result = described_class.execute(
      query_string,
      context: context,
      variables: variables
    )

    pp result if result['errors']

    result
  }

  describe 'champions query' do
    context 'when find all champions from a version' do
      let(:query_string) { %|{ champions(version: "7.15.1") { name } }| }
      let!(:champions) { create_list :champion, 2, version: '7.15.1' }

      it 'returns correct champions size' do
        expect(result['data']['champions'].size).to eq(2)
      end
    end

    context 'when find some champion by version and name' do
      let!(:champions) { create_list :champion, 2, version: '7.15.1' }
      let(:query_string) do
        %|{
          champions(version: "7.15.1", name: "#{champions[0].name}") {
            name
          }
        }|
      end

      it 'returns correct champions returned size' do
        expect(result['data']['champions'].size).to eq(1)
      end

      it 'returns correct champions name' do
        expect(result['data']['champions'][0]['name']).to eq(
          champions[0].name
        )
      end
    end

    context 'when has no champions with query arguments' do
      let!(:champions) { create_list :champion, 2, version: '7.15.1' }
      let(:query_string) { %|{ champions(version: "7.14.1") { name } }| }

      it 'returns a empty list' do
        expect(result['data']['champions']).to be_empty
      end
    end

    context 'when has no champions' do
      let(:query_string) { %|{ champions(version: "7.14.1") { name } }| }

      it 'returns a empty list' do
        expect(result['data']['champions']).to be_empty
      end
    end
  end

  describe 'champion query' do
    context 'when find a champion with query arguments' do
      let!(:champion) { create :champion, version: '7.15.1' }
      let(:query_string) do
        %|{
          champion(version: "7.15.1", name: "#{champion.name}") {
            name
          }
        }|
      end

      it 'returns correct champion name' do
        expect(result['data']['champion']['name']).to eq(champion.name)
      end
    end

    context 'when has no champions finded' do
      let(:query_string) do
        %|{
          champion(version: "7.15.1", name: "Vayne") {
            name
          }
        }|
      end

      it 'returns correct champion name' do
        expect(result['data']['champion']).to be_nil
      end
    end
  end
end
