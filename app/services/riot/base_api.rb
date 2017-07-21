module Riot
  class BaseAPI
    include HTTParty

    base_uri 'https://br1.api.riotgames.com'
    disable_rails_query_string_format

    def initialize(query: {}, options: {})
      @options = options
      @query = default_query.merge(query)
    end

    private

    attr_reader :query

    def perform_request(endpoint, request_id)
      response = self.class.get(endpoint, options)
      json_parse_request(response)
    end

    def json_parse_request(response)
      JSON.parse(response, symbolize_names: true)
    end

    def options
      default_options
        .merge(query: @query)
        .merge(@options)
    end

    def default_options
      {
        format: :plain
      }
    end

    def default_query
      {
        api_key: ENV['RIOT_API_KEY']
      }
    end
  end
end
