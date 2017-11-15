module Resolvers
  class ChangesResolver
    def self.call(champion:)
      new(champion).resolve
    end

    def initialize(champion)
      @champion = champion
    end

    def resolve
      ChangeFactory.(change: change)
    end

    private

    attr_reader :champion

    def change
      CompareVersions::Judge.(newer: champion, older: previous_champion)
    end

    def previous_champion
      Champion.find_by(name: champion.name, version: previous_version)
    end

    def previous_version
      PreviousVersion.(version: champion.version)
    end
  end
end
