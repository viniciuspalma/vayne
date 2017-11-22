require 'rails_helper'

describe Stats, type: :model do
  it { should belong_to(:champion) }
end
