class StatsEvidence < Dry::Struct
  attribute :attribute, DryTypes::Coercible::String
  attribute :status, DryTypes::Coercible::String
  attribute :actual, DryTypes::Strict::Float
  attribute :previous, DryTypes::Strict::Float
end
