class ChampionsRepo
  def self.find(id:)
    Champion[League::StaticData::Champion.new.call(id: id)]
  end

  def self.all()
    League::StaticData::Champions.new.call()[:data].map do |key, value|
      Champion[{id: key}.merge(value)]
    end
  end
end
