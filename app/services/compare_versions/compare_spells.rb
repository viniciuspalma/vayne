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
      end.flatten
    end

    private

    attr_accessor :new_spells, :old_spells

    def compare_effect(new_spell, old_spell)
      new_effect = normalize_effect(new_spell.effect)
      old_effect = normalize_effect(old_spell.effect)

      new_effect.zip(old_effect).map do |new_effect_item, old_effect_item|
        status_compare(new_effect_item, old_effect_item, new_spell.name)
      end
    end

    def status_compare(new_effect_item, old_effect_item, name)
      new_effect_item.zip(old_effect_item).map do |new_value, old_value|
        if new_value > old_value
          { spell: name, status: :buff }
        elsif new_value < old_value
          { spell: name, status: :nerf }
        elsif new_value == old_value
          { spell: name, status: :no_changes }
        end
      end
    end

    def normalize_effect(effect)
      effect.compact.map do |effect_item|
        effect_item unless effect_item.all?(&:zero?)
      end.compact
    end
  end
end
