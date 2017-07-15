class SpellVariable < Dry::Struct
  constructor_type :schema

  attribute :key,   Types::Strict::String
  attribute :link,  Types::Strict::String
  attribute :coeff, Types::Strict::Array
end
