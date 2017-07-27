Types::SkinType = GraphQL::ObjectType.define do
  name 'Skins'

  field :id,      !types.ID
  field :id_skin, types.Int
  field :number,  types.Int
  field :name,    types.String
end
