Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :champion do
    description "Query to find a champion by your id and version number"
    type Types::ChampionType

    argument :name, !types.String
    argument :version, !types.String

    resolve ->(_, args, _) {
      Champion.find_by(name: args[:name].titlecase, version: args[:version])
    }
  end

  field :champions, types[Types::ChampionType] do
    description "Query to all champions from a version"

    argument :name, types.String
    argument :version, !types.String

    resolve -> (_, args, _) {
      if args[:name].blank?
        Champion.where(version: args[:version])
      else
        Champion.where(name: args[:name], version: args[:version])
      end
    }
  end
end
