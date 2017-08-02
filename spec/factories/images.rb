FactoryGirl.define do
  factory :image do
    full { "#{Faker::LeagueOfLegends.champion}.jpg" }
    group { "#{Faker::LeagueOfLegends.champion}.jpg" }
    sprite { "#{Faker::LeagueOfLegends.champion}.jpg" }
    height { Faker::Number.between(1, 100) }
    width { Faker::Number.between(1, 100) }
    axis_y { Faker::Number.between(1, 100) }
    axis_x { Faker::Number.between(1, 100) }
  end
end
