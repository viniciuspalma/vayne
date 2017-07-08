module League
  module StaticData
    class Versions < LeagueAPI
      def call()
        perform_request(
          '/lol/static-data/v3/versions',
          'static_data/versions'
        )
      end
    end
  end
end
