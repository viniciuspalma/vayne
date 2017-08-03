class PopulateChampions
  def self.call(season:)
    new(season).populate
  end

  def initialize(season)
    @season = season
  end

  def populate
    versions_champions.map do |version_champions|
      create_champions(version_champions[:champions], version_champions[:version])
    end
  end

  private

  attr_reader :season

  def create_champions(champions, version)
    champions.map do |_, champion|
      ChampionFactory.(champion: champion, version: version)
    end
  end

  def versions_champions
    season_versions.map do |version|
      puts %Q{ ›› "populate champions from version: "#{version}"" }

      {
        champions: Riot::StaticData::Champions.new.call(version: version)[:data],
        version: version
      }
    end
  end

  def season_versions
    versions.select do |version|
      version[0] == season.to_s
    end
  end

  def versions
    Riot::StaticData::Versions.new.call
  end
end
