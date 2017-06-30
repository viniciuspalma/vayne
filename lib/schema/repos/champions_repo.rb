class ChampionsRepo
  def self.find(id:)
    Champion[
      League::StaticData::Champion.new.call(id: id)
    ]
  end
end
