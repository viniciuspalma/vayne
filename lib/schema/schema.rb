require_relative 'queries/query_type'
require_relative 'models/types/types'
require_relative 'models/info'
require_relative 'models/stats'
require_relative 'models/image'
require_relative 'models/spell_variable'
require_relative 'models/spell'
require_relative 'models/skin'
require_relative 'models/champion'
require_relative 'types/info_type'
require_relative 'types/stats_type'
require_relative 'types/image_type'
require_relative 'types/skin_type'
require_relative 'types/champion_type'
require_relative 'repos/champions_repo'

Schema = GraphQL::Schema.define do
  query QueryType
end
