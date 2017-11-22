require 'rails_helper'

describe Champion, type: :model do
  it { should have_many(:skins) }
  it { should have_many(:spells) }
  it { should have_one(:image) }
  it { should have_one(:stats) }
end
