ChampionType = GraphQL::ObjectType.define do
  name 'Champion'

  field :id,    !types.ID
  field :name,  types.String
  field :lore,  types.String
  field :info,  -> { InfoType }
  field :stats, -> { StatsType }
  field :image, -> { ImageType }
end
