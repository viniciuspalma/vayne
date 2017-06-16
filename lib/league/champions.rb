require 'httparty'

module League
  class Champions
    # TODO: refactor this class xD

    def champions_data
      HTTParty.get(
        "#{base_uri}#{static_data_path}#{champions_endpoint}?#{params_index}"
      ).parsed_response
    end

    def champion_data(id:)
      HTTParty.get(
        "#{base_uri}#{static_data_path}#{champions_endpoint}/#{id}?#{params_find}"
      ).parsed_response
    end

    def base_uri
      'https://br1.api.riotgames.com'
    end

    def static_data_path
      '/lol/static-data/v3'
    end

    def champions_endpoint
      '/champions'
    end

    def params_index
      "locale=#{locale}&#{tags}&dataById=#{dataById}&api_key=#{api_key}"
    end

    def params_find
      "locale=#{locale}&#{tags}&api_key=#{api_key}"
    end

    def locale
      'en_US'
    end

    def tags
      'tags=image&tags=info&tags=lore&tags=stats'
    end

    def dataById
      'true'
    end

    def api_key
      ENV['RIOT_API_KEY']
    end
  end
end
