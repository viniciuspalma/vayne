FactoryBot.define do
  factory :champion do
    name { Faker::Games::LeagueOfLegends.champion }
    title { Faker::Games::LeagueOfLegends.masteries }
    lore { Faker::Games::LeagueOfLegends.quote }
    partype { 'Mana' }
    tags { ['Mage', 'Tank'] }
    ally_tips { [] }
    enemy_tips { [] }
    association :stats, factory: :stats, strategy: :build
  end
end
