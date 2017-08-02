class Champion < ApplicationRecord
  has_many :skins
  has_many :spells

  has_one :image, as: :imageable
  has_one :stats
end
