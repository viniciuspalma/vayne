require 'rails_helper'

describe 'GraphQL Query: champion', type: :request do
  describe 'champion' do
    let!(:champions) { create_list :champion, 2, version: '1.1.1' }

    context 'return a champion that matches with the search' do
      before do
        post '/graphql', params: {
          query: %| {
            champion(version: "1.1.1", name: "#{champions[0].name}") {
              name
            }
          } |,
        }
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(200)
      end

      it 'returns name of champion' do
        expect(JSON.parse(response.body)['data']['champion']['name']).to eq(
          champions[0].name
        )
      end
    end
  end
end
