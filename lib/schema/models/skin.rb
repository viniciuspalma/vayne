class Skin < Dry::Struct
  constructor_type :schema

  attribute :id,   Types::Strict::Int
  attribute :num,  Types::Strict::Int
  attribute :name, Types::Strict::String
end
