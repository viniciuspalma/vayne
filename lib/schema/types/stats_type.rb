StatsType = GraphQL::ObjectType.define do
  name 'Stats of Champion'

  field :armorperlevel,        types.Float
  field :hpperlevel,           types.Float
  field :attackdamage,         types.Float
  field :mpperlevel,           types.Float
  field :attackspeedoffset,    types.Float
  field :armor,                types.Float
  field :hp,                   types.Float
  field :hpregenperlevel,      types.Float
  field :spellblock,           types.Float
  field :attackrange,          types.Float
  field :movespeed,            types.Float
  field :attackdamageperlevel, types.Float
  field :mpregenperlevel,      types.Float
  field :mp,                   types.Float
  field :spellblockperlevel,   types.Float
  field :crit,                 types.Float
  field :mpregen,              types.Float
  field :attackspeedperlevel,  types.Float
  field :hpregen,              types.Float
  field :critperlevel,         types.Float
end
