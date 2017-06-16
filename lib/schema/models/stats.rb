class Stats < Dry::Struct
  constructor_type :schema

  attribute :armorperlevel,        Types::Float
  attribute :hpperlevel,           Types::Float
  attribute :attackdamage,         Types::Float
  attribute :mpperlevel,           Types::Float
  attribute :attackspeedoffset,    Types::Float
  attribute :armor,                Types::Float
  attribute :hp,                   Types::Float
  attribute :hpregenperlevel,      Types::Float
  attribute :spellblock,           Types::Float
  attribute :attackrange,          Types::Float
  attribute :movespeed,            Types::Float
  attribute :attackdamageperlevel, Types::Float
  attribute :mpregenperlevel,      Types::Float
  attribute :mp,                   Types::Float
  attribute :spellblockperlevel,   Types::Float
  attribute :crit,                 Types::Float
  attribute :mpregen,              Types::Float
  attribute :attackspeedperlevel,  Types::Float
  attribute :hpregen,              Types::Float
  attribute :critperlevel,         Types::Float
end
