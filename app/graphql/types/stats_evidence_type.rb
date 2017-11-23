Types::StatsEvidenceType = GraphQL::ObjectType.define do
  name 'Stats Evidence'

  field :status,    types.String
  field :attribute, types.String
  field :actual,    types.Float
  field :previous,  types.Float
end
