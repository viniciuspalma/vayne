Types::SpellEffectType = GraphQL::ObjectType.define do
  name 'SpellEffect'

  field :status,   types.String
  field :actual,   types.Float
  field :previous, types.Float
end
