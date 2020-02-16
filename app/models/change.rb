class Change < Dry::Struct
  attribute :status,          DryTypes::Coercible::String
  attribute :stats_evidences, DryTypes::Strict::Array.of(StatsEvidence)
  attribute :spell_evidences, DryTypes::Strict::Array.of(SpellEvidence)
end
