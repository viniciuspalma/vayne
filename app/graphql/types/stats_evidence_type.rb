Types::StatsEvidenceType = GraphQL::ObjectType.define do
  name 'StatsEvidence'

  field :status,    types.String
  field :attribute, types.String
  field :actual,    types.Float
  field :previous,  types.Float
end
