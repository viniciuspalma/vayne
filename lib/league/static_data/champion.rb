module League
  module StaticData
    class Champion < League::LeagueAPI
      def call(id:)
        query.merge!(locale: 'en_US',
          tags: ['image', 'info', 'lore', 'stats'])

        self.class.get("/lol/static-data/v3/champions/#{id}", options)
          .parsed_response
      end
    end
  end
end
