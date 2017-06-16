class Info < Dry::Struct
  constructor_type :schema

  attribute :difficulty, Types::Int
  attribute :attack,     Types::Int
  attribute :defense,    Types::Int
  attribute :magic,      Types::Int
end
