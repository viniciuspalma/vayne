module League
  module StaticData
    class Champion < League::LeagueAPI
      def call(id:, version:)
        query.merge!(
          locale: 'en_US',
          version: version,
          tags: ['image', 'info', 'lore', 'stats', 'skins']
        )

        perform_request(
          "/lol/static-data/v3/champions/#{id}",
          "static_data/champions/#{id}/#{version}"
        )
      end
    end
  end
end
