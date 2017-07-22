class Champion < ApplicationRecord
  has_many :images, as: :imageable
  has_many :skins
  has_many :spells
end
