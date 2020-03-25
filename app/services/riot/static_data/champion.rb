module Riot
  module StaticData
    class Champion < Riot::BaseApi
      def call(id:, version:)
        perform_request("/cdn/#{version}/data/en_US/champion/#{id}.json")[:data][id.to_sym]
      end
    end
  end
end