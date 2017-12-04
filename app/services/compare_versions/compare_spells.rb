module CompareVersions
  class CompareSpells
    def self.call(new_spells:, old_spells:)
      new(new_spells, old_spells).compare
    end

    def initialize(new_spells, old_spells)
      @new_spells = new_spells
      @old_spells = old_spells
    end

    def compare
      new_spells.zip(old_spells).map do |new_spell, old_spell|
        compare_effect(new_spell, old_spell)
      end
    end

    private

    attr_accessor :new_spells, :old_spells

    def compare_effect(new_spell, old_spell)
      new_effect = normalize_effect(new_spell.effects)
      old_effect = normalize_effect(old_spell.effects)

      effects = new_effect.zip(old_effect).map do |new_effect_item, old_effect_item|
        return { status: :new, actual: 0.0, previous: 0.0 } if old_effect_item.nil? || new_effect_item.nil?

        status_compare(new_effect_item, old_effect_item)
      end

      {
        spell: new_spell.name,
        description: new_spell.description,
        tooltip: new_spell.tooltip,
        effects: effects
      }
    end

    def status_compare(new_effect_item, old_effect_item)
      new_effect_item.zip(old_effect_item).map do |new_value, old_value|
        status = AnalyzeStatus.(actual: new_value.to_f, previous: old_value.to_f)

        {
          status: status,
          actual: new_value.to_f,
          previous: old_value.to_f
        }
      end
    end

    def normalize_effect(effect)
      effect.compact.map do |effect_item|
        effect_item unless effect_item.all? { |num| num.to_f.zero? }
      end.compact
    end
  end
end
