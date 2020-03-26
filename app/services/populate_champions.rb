class PopulateChampions
  def self.call(version:)
    new(version).populate
  end

  def initialize(version)
    @version = version
  end

  def populate
    champions.map do |_, champ|
      ChampionFactory.(
        champion: champion(champ[:id]),
        version: version
      )
    end
  end

  private

  attr_reader :version

  def champions
    Riot::StaticData::Champions.new.call(version: version)[:data]
  end

  def champion(id)
    Riot::StaticData::Champion.new.call(id: id, version: version)
  end
end
