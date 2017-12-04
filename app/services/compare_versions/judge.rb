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
      {
        status: InvestigateEvidences.(evidences: evidences_status),
        evidences: evidences
      }
    end

    private

    attr_accessor :newer, :older

    def evidences
      [
        compare_stats,
        compare_spells
      ].flatten
    end

    def evidences_status
      [
        compare_stats,
        compare_spells.map { |compared_spell| compared_spell[:effects] }.flatten
      ].flatten
    end

    def compare_stats
      CompareAttributes.new(attributes: attributes, object: newer.stats)
        .compare(older.stats)
    end

    def compare_spells
      CompareSpells.(new_spells: newer.spells, old_spells: older.spells)
    end

    def attributes
      newer.stats.attributes.keys - ['id', 'champion_id', 'updated_at', 'created_at']
    end
  end
end
