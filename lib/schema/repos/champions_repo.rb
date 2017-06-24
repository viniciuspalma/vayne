class ChampionsRepo
  def self.all
    League::Champions.new().champions_data
  end

  def self.find(id:)
    champion = League::Champions.new().champion_data(id: id)

    Champion.new(
      id: champion['id'],
      name: champion['name'],
      title: champion['title'],
      lore: champion['lore'],
      info: {
        difficulty: champion['info']['difficulty'],
        attack: champion['info']['attack'],
        defense: champion['info']['defense'],
        magic: champion['info']['magic']
      },
      stats: {
        armorperlevel: champion['stats']['armorperlevel'],
        hpperlevel: champion['stats']['hpperlevel'],
        attackdamage: champion['stats']['attackdamage'],
        mpperlevel: champion['stats']['mpperlevel'],
        attackspeedoffset: champion['stats']['attackspeedoffset'],
        armor: champion['stats']['armor'],
        hp: champion['stats']['hp'],
        hpregenperlevel: champion['stats']['hpregenperlevel'],
        spellblock: champion['stats']['spellblock'],
        attackrange: champion['stats']['attackrange'],
        movespeed: champion['stats']['movespeed'],
        attackdamageperlevel: champion['stats']['attackdamageperlevel'],
        mpregenperlevel: champion['stats']['mpregenperlevel'],
        mp: champion['stats']['mp'],
        spellblockperlevel: champion['stats']['spellblockperlevel'],
        crit: champion['stats']['crit'],
        mpregen: champion['stats']['mpregen'],
        attackspeedperlevel: champion['stats']['attackspeedperlevel'],
        hpregen: champion['stats']['hpregen'],
        critperlevel: champion['stats']['critperlevel']
      },
      image: {
        full: champion['image']['full'],
        group: champion['image']['group'],
        sprite: champion['image']['sprite'],
        h: champion['image']['h'],
        w: champion['image']['w'],
        x: champion['image']['x'],
        y: champion['image']['y']
      }
    )
  end
end
