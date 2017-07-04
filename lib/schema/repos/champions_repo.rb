class ChampionsRepo
  def self.find(id:)
    version = League::StaticData::Versions.new.call[0]
    Champion[League::StaticData::Champion.new.call(id: id, version: version)]
  end

  def self.all()
    League::StaticData::Champions.new.call()[:data].map do |key, value|
      Champion[{id: key}.merge(value)]
    end
  end

  def self.by_version(id:, version:)
    Champion[League::StaticData::Champion.new.call(id: id, version: version)]
  end
end
