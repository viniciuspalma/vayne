require 'rails_helper'

RSpec.describe 'GraphQL Query: AllChampions', type: :request do
  describe 'AllChampions' do
    let!(:champions) { create_list :champion, 2 }

    context 'return all champions created' do
      before do
        post '/graphql', params: {
          query: %| { AllChampions { name } } |
        }
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(200)
      end

      it 'returns status all champions created' do
        expect(JSON.parse(response.body)['data']['AllChampions'].size).to eq(2)
      end
    end
  end
end
