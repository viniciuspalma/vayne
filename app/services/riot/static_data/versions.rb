module Riot
  module StaticData
    class Versions < Riot::BaseApi
      def call()
        perform_request('/api/versions.json')
      end
    end
  end
end
