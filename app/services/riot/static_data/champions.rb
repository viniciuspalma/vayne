module Riot
  module StaticData
    class Champions < Riot::BaseAPI
      def call(version:)
        query.merge!(
          locale: 'en_US',
          dataById: 'true',
          tags: 'all',
          version: version
        )

        perform_request('/lol/static-data/v3/champions')
      end
    end
  end
end
