class Spell < Dry::Struct
  constructor_type :schema

  attribute :name,             Types::Strict::String
  attribute :description,      Types::Strict::String
  attribute :sanitizedTooltip, Types::Strict::String
  attribute :maxrank,          Types::Strict::Int
  attribute :cost,             Types::Strict::Array.member(Types::Strict::Int)
  attribute :range,            Types::Strict::Array.member(Types::Strict::Int)
  attribute :effects,          Types::Strict::Array.member(Types::Strict::Int)
  attribute :cooldown,         Types::Strict::Array.member(Types::Strict::Int)
  attribute :vars,             Types::Strict::Array.member(SpellVariable)
  attribute :image,            Image
end