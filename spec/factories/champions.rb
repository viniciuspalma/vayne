FactoryGirl.define do
  factory :champion do
    name { Faker::LeagueOfLegends.champion }
    title { Faker::LeagueOfLegends.masteries }
    lore { Faker::LeagueOfLegends.quote }
    partype 'Mana'
    tags ['Mage', 'Tank']
    ally_tips []
    enemy_tips []
  end
end
