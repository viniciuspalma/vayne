class SeasonVersions
  def self.call(season:)
    new(season).filter_versions
  end

  def initialize(season)
    @season = season
  end

  def filter_versions
    versions.select do |version|
      season_version?(version)
    end
  end

  private

  attr_reader :season

  def season_version?(version)
    version[0] == season.to_s
  end

  def versions
    Riot::StaticData::Versions.new.call
  end
end
