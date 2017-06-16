InfoType = GraphQL::ObjectType.define do
  name 'Informations of Champion'

  field :difficulty, types.Int
  field :attack,     types.Int
  field :defense,    types.Int
  field :magic,      types.Int
end
