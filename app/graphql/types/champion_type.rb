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
  field :stats,   -> { Types::StatsType }
  field :image,   -> { Types::ImageType }
  field :skins,   -> { Types::SkinType.to_list_type }

  field :change, Types::ChangeType do
    resolve -> (champion, _, _) {
      Resolvers::ChangesResolver.(champion: champion)
    }
  end
end
