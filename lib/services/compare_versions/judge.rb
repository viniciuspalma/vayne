module CompareVersions
  class Judge
    def self.call(newer:, older:)
      new(newer, older).adjudicate
    end

    def initialize(newer, older)
      @newer = newer
      @older = older
    end

    def adjudicate
      InvestigateEvidences.(evidences: evidences)
    end

    private

    attr_accessor :newer, :older

    def evidences
      [
        compare_stats,
        compare_spells
      ].flatten
    end

    def compare_stats
      CompareAttributes.new(attributes: newer.stats.to_h.keys, object: newer.stats)
        .compare(older.stats)
    end

    def compare_spells
      CompareSpells.(new_spells: newer.spells, old_spells: older.spells)
    end
  end
end
