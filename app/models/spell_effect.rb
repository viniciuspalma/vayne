class SpellEffect < Dry::Struct
  attribute :status,   DryTypes::Coercible::String
  attribute :actual,   DryTypes::Strict::Float
  attribute :previous, DryTypes::Strict::Float
end
