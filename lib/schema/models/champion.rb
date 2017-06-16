class Champion < Dry::Struct
  constructor_type :schema

  attribute :id,    Types::Int
  attribute :name,  Types::String
  attribute :lore,  Types::String
  attribute :info,  Info
  attribute :stats, Stats
  attribute :image, Image
end
