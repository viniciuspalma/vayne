FactoryBot.define do
  factory :stats do
    armorperlevel { Faker::Number.positive }
    hpperlevel { Faker::Number.positive }
    attackdamage { Faker::Number.positive }
    mpperlevel { Faker::Number.positive }
    attackspeedoffset { Faker::Number.positive }
    armor { Faker::Number.positive }
    hp { Faker::Number.positive }
    hpregenperlevel { Faker::Number.positive }
    spellblock { Faker::Number.positive }
    attackrange { Faker::Number.positive }
    movespeed { Faker::Number.positive }
    attackdamageperlevel { Faker::Number.positive }
    mpregenperlevel { Faker::Number.positive }
    mp { Faker::Number.positive }
    spellblockperlevel { Faker::Number.positive }
    crit { Faker::Number.positive }
    mpregen { Faker::Number.positive }
    attackspeedperlevel { Faker::Number.positive }
    hpregen { Faker::Number.positive }
    critperlevel { Faker::Number.positive }
  end
end
