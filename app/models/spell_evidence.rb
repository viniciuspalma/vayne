class SpellEvidence < Dry::Struct
  attribute :spell,       DryTypes::Coercible::String
  attribute :description, DryTypes::Coercible::String
  attribute :tooltip,     DryTypes::Coercible::String
  attribute :effects,     DryTypes::Strict::Array.of(DryTypes::Strict::Array.of(SpellEffect))
end
