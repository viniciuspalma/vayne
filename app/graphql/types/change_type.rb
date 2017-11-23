Types::ChangeType = GraphQL::ObjectType.define do
  name 'Change'

  field :status,             types.String
  field :stats_evidences, -> { Types::StatsEvidenceType.to_list_type }
end
