class Info < Dry::Struct
  constructor_type :schema

  attribute :difficulty, Types::Strict::Int
  attribute :attack,     Types::Strict::Int
  attribute :defense,    Types::Strict::Int
  attribute :magic,      Types::Strict::Int
end
