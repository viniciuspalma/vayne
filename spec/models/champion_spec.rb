require 'rails_helper'

RSpec.describe Champion, type: :model do
  it { should have_many(:images) }
  it { should have_many(:skins) }
  it { should have_many(:spells) }
end
