SkinType = GraphQL::ObjectType.define do
  name 'Skins of Champion'

  field :id,   !types.ID
  field :num,  types.Int
  field :name, types.String
end
