require 'rails_helper'

RSpec.describe Skin, type: :model do
  it { should belong_to(:champion) }
end
