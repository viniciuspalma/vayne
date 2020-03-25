module Riot
  module StaticData
    class Champions < Riot::BaseApi
      def call(version:)
        perform_request("/cdn/#{version}/data/en_US/champion.json")
      end
    end
  end
end
