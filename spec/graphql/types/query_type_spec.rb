require 'rails_helper'

describe Types::QueryType do
  describe '#to_s' do
    it 'returns type description' do
      expect(described_class.to_s).to eq('Query')
    end
  end

  describe 'champion query field' do
    it 'returns a Champion type' do
      expect(described_class.fields['champion'].type.to_s).to eq('Champion')
    end
  end

  describe 'champions query field' do
    it 'returns a List of Champions type' do
      expect(described_class.fields['champions'].type.to_s).to eq('[Champion]')
    end
  end
end
