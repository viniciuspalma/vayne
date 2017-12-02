Types::SpellEvidenceType = GraphQL::ObjectType.define do
  name 'Stats Evidence'

  field :status,    types.String
  field :name,      types.String
  field :actual,    types.Float
  field :previous,  types.Float
end
