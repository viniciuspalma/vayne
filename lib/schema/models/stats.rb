class Stats < Dry::Struct
  constructor_type :schema

  attribute :armorperlevel,        Types::Strict::Float
  attribute :hpperlevel,           Types::Strict::Float
  attribute :attackdamage,         Types::Strict::Float
  attribute :mpperlevel,           Types::Strict::Float
  attribute :attackspeedoffset,    Types::Strict::Float
  attribute :armor,                Types::Strict::Float
  attribute :hp,                   Types::Strict::Float
  attribute :hpregenperlevel,      Types::Strict::Float
  attribute :spellblock,           Types::Strict::Float
  attribute :attackrange,          Types::Strict::Float
  attribute :movespeed,            Types::Strict::Float
  attribute :attackdamageperlevel, Types::Strict::Float
  attribute :mpregenperlevel,      Types::Strict::Float
  attribute :mp,                   Types::Strict::Float
  attribute :spellblockperlevel,   Types::Strict::Float
  attribute :crit,                 Types::Strict::Float
  attribute :mpregen,              Types::Strict::Float
  attribute :attackspeedperlevel,  Types::Strict::Float
  attribute :hpregen,              Types::Strict::Float
  attribute :critperlevel,         Types::Strict::Float
end
