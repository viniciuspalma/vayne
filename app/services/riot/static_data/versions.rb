module Riot
  module StaticData
    class Versions < Riot::BaseAPI
      def call()
        perform_request('/lol/static-data/v3/versions')
      end
    end
  end
end
