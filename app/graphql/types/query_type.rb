Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :FindChampion do
    description "Query to find a champion by your id and version number"
    type Types::ChampionType

    argument :name, !types.String
    argument :version, !types.String

    resolve ->(_, args, _) {
      Champion.find_by(name: args[:name], version: args[:version])
    }
  end

  field :FindChampions, types[Types::ChampionType] do
    description "Query to all champions from a version"

    argument :name, !types.String
    argument :version, types.String

    resolve -> (_, args, _) {
      if args[:version].blank?
        Champion.where(name: args[:name])
      else
        Champion.where(name: args[:name], version: args[:version])
      end
    }
  end

  field :AllChampions, types[Types::ChampionType] do
    description "Query to all champions"

    resolve -> (_, _, _) {
      Champion.all
    }
  end
end
