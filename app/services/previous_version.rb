class PreviousVersion
  def self.call(version:)
    new(version).previous_version
  end

  def initialize(version)
    @version = version
  end

  def previous_version
    versions.select do |compared_version|
      previous?(compared_version)
    end.first
  end

  private

  attr_reader :version

  def previous?(compared_version)
    Gem::Version.new(compared_version) < Gem::Version.new(version)
  end

  def versions
    Champion
      .all
      .pluck(:version)
      .uniq
      .reverse
  end
end
