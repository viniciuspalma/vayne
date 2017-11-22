require 'rails_helper'

describe Skin, type: :model do
  it { should belong_to(:champion) }
end
