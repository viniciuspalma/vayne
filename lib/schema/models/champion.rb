class Champion < Dry::Struct
  constructor_type :schema

  attribute :id,     Types::Strict::Int
  attribute :title,  Types::Strict::String
  attribute :name,   Types::Strict::String
  attribute :lore,   Types::Strict::String
  attribute :info,   Info
  attribute :stats,  Stats
  attribute :image,  Image
  attribute :skins,  Types::Strict::Array.member(Skin)
  attribute :spells, Types::Strict::Array.member(Spell)
end
