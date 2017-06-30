module League
  module StaticData
    class Champion < League::LeagueAPI
      def call(id:)
        query.merge!(locale: 'en_US',
          tags: ['image', 'info', 'lore', 'stats', 'skins'])

        perform_request(
          "/lol/static-data/v3/champions/#{id}",
          "static_data/champions/#{id}"
        )
      end
    end
  end
end
