require 'rails_helper'

RSpec.describe 'GraphQL Query: FindChampions', type: :request do
  describe 'FindChampions' do
    let!(:champions) { create_list :champion, 2, version: '1.1.1' }

    context 'return all champions created' do
      before do
        post '/graphql', params: {
          query: %| { FindChampions(version: "1.1.1") { name } } |,
        }
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(200)
      end

      it 'returns all champions created' do
        expect(JSON.parse(response.body)['data']['FindChampions'].size).to eq(2)
      end
    end
  end
end
