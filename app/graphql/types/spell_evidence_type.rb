Types::SpellEvidenceType = GraphQL::ObjectType.define do
  name 'SpellEvidence'

  field :spell,       types.String
  field :description, types.String
  field :tooltip,     types.String
  field :effects,     types[Types::SpellEffectType.to_list_type]
end
