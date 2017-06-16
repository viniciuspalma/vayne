QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root of this schema"

  field :champion do
    type ChampionType
    argument :id, !types.ID
    description "Find an champion by its ID"
    resolve ->(obj, args, ctx) {
      ChampionsRepo.find(id: args['id'])
    }
  end
end
