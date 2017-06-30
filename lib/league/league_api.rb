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

    def options
      default_options
        .merge(query: @query)
        .merge(@options)
    end

    def default_options
      {}
    end

    def default_query
      {
        api_key: ENV['RIOT_API_KEY']
      }
    end
  end
end
