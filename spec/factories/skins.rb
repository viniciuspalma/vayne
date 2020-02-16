FactoryBot.define do
  factory :skin do
    id_skin { Faker::Number.between(1, 10) }
    number { Faker::Number.between(1, 10) }
    name { Faker::Games::LeagueOfLegends.champion }
  end
end
