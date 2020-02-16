FactoryBot.define do
  factory :spell do
    max_rank { 5 }
    name { Faker::Games::LeagueOfLegends.masteries }
    description { Faker::Games::LeagueOfLegends.masteries }
    tooltip { Faker::Games::LeagueOfLegends.masteries }
    effects { [["5.5", "5.5", "5.5"], ["5.5", "5.5", "5.5"]] }
    cost { [["5.5", "5.5", "5.5"], ["5.5", "5.5", "5.5"]] }
    range { [["5.5", "5.5", "5.5"], ["5.5", "5.5", "5.5"]] }
    cooldown { [["5.5", "5.5", "5.5"], ["5.5", "5.5", "5.5"]] }
  end
end
