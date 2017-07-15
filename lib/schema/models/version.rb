class Version < Dry::Struct
  constructor_type :schema

  attribute :number, Types::Strict::String
  attribute :status, Types::Strict::String
end
