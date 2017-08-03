class PopulateChampions
  def self.call(version:)
    new(version).populate
  end

  def initialize(version)
    @version = version
  end

  def populate
    champions.map do |_, champion|
      ChampionFactory.(champion: champion, version: version)
    end
  end

  private

  attr_reader :version

  def champions
    Riot::StaticData::Champions.new.call(version: version)[:data]
  end
end
