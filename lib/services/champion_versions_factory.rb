class ChampionVersionsFactory
  def self.call(champion_id:)
    new(champion_id).versions_status
  end

  def initialize(champion_id)
    @champion_id = champion_id
  end

  def versions_status
    versions.first(4).each_with_index.map do |version, index|
      version(version, versions[index + 1])
    end
  end

  private

  attr_reader :champion_id

  def version(version, old_version)
    champion = champion_by_version(version)
    old_champion = champion_by_version(old_version)

    Version[
      number: version,
      status: compare_versions(champion, old_champion).to_s
    ]
  end

  def compare_versions(newer, older)
    CompareVersions::Judge.(newer: newer, older: older)
  end

  def versions
    @versions ||= League::StaticData::Versions.new.call
  end

  def champion_by_version(version)
    ChampionsRepo.by_version(
      id: champion_id,
      version: version
    )
  end
end
