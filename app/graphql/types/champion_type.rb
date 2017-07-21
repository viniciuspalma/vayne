Types::ChampionType = GraphQL::ObjectType.define do
  name "Champion"

  field :id,         !types.ID
  field :version,    types.String
  field :api_id,     types.String
  field :name,       types.String
  field :title,      types.String
  field :lore,       types.String
  field :partype,    types.String
  field :tags,       types.String.to_list_type
  field :ally_tips,  types.String.to_list_type
  field :enemy_tips, types.String.to_list_type
end
