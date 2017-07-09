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
        compare_attributes,
        compare_spells
      ].flatten
    end

    def compare_attributes
      CompareAttributes.new(attributes: keys, object: newer)
        .compare(older)
    end

    def compare_spells
      CompareSpells.(new_spells: newer.spells, old_spells: older.spells)
    end

    def keys
      newer.to_h.keys - [:spells]
    end
  end
end
