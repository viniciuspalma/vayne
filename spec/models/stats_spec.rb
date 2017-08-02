require 'rails_helper'

RSpec.describe Stats, type: :model do
  it { should belong_to(:champion) }
end
