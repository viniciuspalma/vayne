VersionType = GraphQL::ObjectType.define do
  name "Version status of champion"

  field :number, types.String
  field :status, types.String
end
