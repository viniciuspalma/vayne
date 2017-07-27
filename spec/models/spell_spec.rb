require 'rails_helper'

RSpec.describe Spell, type: :model do
  it { should belong_to(:champion) }
end
