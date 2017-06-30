module League
  module StaticData
    class Champions < League::LeagueAPI
      def call()
        query.merge!(
          locale: 'en_US',
          tags: ['image', 'info', 'lore', 'stats', 'skins'],
          dataById: 'true'
        )

        perform_request(
          "/lol/static-data/v3/champions",
          "static_data/champions/all"
        )
      end
    end
  end
end
