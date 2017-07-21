class ChampionFactory
  def self.call(champion:, version:)
    new(champion, version).build_champion
  end

  def initialize(champion, version)
    @champion = champion
    @version = version
  end

  def build_champion
    Champion.new(champion_attributes)
  end

  private

  attr_reader :champion, :version

  def champion_attributes
    {
      version: version,
      api_id: champion[:id],
      name: champion[:name],
      title: champion[:title],
      lore: champion[:lore],
      partype: champion[:partype],
      tags: champion[:tags],
      ally_tips: champion[:allytips],
      enemy_tips: champion[:enemytips]
    }
  end
end
