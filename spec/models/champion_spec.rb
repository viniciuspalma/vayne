require 'rails_helper'

RSpec.describe Champion, type: :model do
  it { should have_many(:skins) }
  it { should have_many(:spells) }
  it { should has_one(:images) }
  it { should has_one(:stats) }
end
