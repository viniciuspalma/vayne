require 'httparty'

module League
  class LeagueAPI
    include HTTParty

    base_uri 'https://na1.api.riotgames.com'
    disable_rails_query_string_format

    def initialize(query: {}, options: {})
      @options = options
      @query = default_query.merge(query)
    end

    private

    attr_reader :query

    def perform_request(endpoint, request_id)
      key = "#{ENV['RIOT_API_KEY']}/#{request_id}"
      return json_parse_request(cached_request(key)) if cached_request(key)

      response = self.class.get(endpoint, options)

      store_request(key, response) if response.code === 200
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

    def cached_request(key)
      store.get(key)
    end

    def store_request(key, response)
      store.setex(key, 1440, json_parse_request(response).to_json)
    end

    def store
      @store ||= Redis.new(url: ENV['REDIS_URL'])
    end
  end
end
