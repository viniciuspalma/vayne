FactoryGirl.define do
  factory :champion do
    name { Faker::LeagueOfLegends.champion }
    title { Faker::LeagueOfLegends.quote }
    lore { Faker::LeagueOfLegends.masteries }
    partype 'Mana'
    tags ['Mage', 'Tank']
    ally_tips []
    enemy_tips []
  end
end
