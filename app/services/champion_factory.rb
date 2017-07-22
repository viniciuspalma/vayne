class ChampionFactory
  def self.call(champion:, version:)
    new(champion, version).build_champion
  end

  def initialize(champion, version)
    @champion = champion
    @version = version
  end

  def build_champion
    ActiveRecord::Base.transaction do
      champion = Champion.create(champion_attributes)

      champion.skins = skins
      champion.spells = spells
      champion.images << image

      champion.save
    end
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

  def image
    Image.new(image_attributes)
  end

  def skins
    champion[:skins].map do |skin|
      Skin.new(skin_attributes(skin))
    end
  end

  def spells
    champion[:spells].map do |spell|
      Spell.new(spell_attributes(spell))
    end
  end

  def image_attributes
    {
      full: champion[:image][:full],
      group: champion[:image][:group],
      sprite: champion[:image][:sprite],
      height: champion[:image][:h],
      width: champion[:image][:w],
      axis_y: champion[:image][:y],
      axis_x: champion[:image][:x]
    }
  end

  def skin_attributes(skin)
    {
      name: skin[:name],
      number: skin[:num],
      id_skin: skin[:id]
    }
  end

  def spell_attributes(spell)
    {
      max_rank: spell[:maxrank],
      name: spell[:name],
      description: spell[:sanitizedDescription],
      tooltip: spell[:sanitizedTooltip],
      effects: spell[:effect].compact,
      cost: spell[:cost],
      range: spell[:range],
      cooldown: spell[:cooldown]
    }
  end
end
