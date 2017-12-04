Types::SpellEffectType = GraphQL::ObjectType.define do
  name 'Spell Effect'

  field :status,   types.String
  field :actual,   types.Float
  field :previous, types.Float
end
