require 'rails_helper'

describe Spell, type: :model do
  it { should belong_to(:champion) }
end
