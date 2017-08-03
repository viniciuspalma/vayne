require 'rails_helper'

RSpec.describe 'GraphQL Query: FindChampion', type: :request do
  describe 'FindChampion' do
    let!(:champions) { create_list :champion, 2, version: '1.1.1' }

    context 'return all champions created' do
      before do
        post '/graphql', params: {
          query: %| {
            FindChampion(version: "1.1.1", name: "#{champions[0].name}") {
              name
            }
          } |,
        }
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(200)
      end

      it 'returns name of champion' do
        expect(JSON.parse(response.body)['data']['FindChampion']['name']).to eq(
          champions[0].name
        )
      end
    end
  end
end
