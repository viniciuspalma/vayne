require 'rails_helper'

describe Image, type: :model do
  it { should belong_to(:imageable) }
end
