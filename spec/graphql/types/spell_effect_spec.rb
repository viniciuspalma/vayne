require 'rails_helper'

describe Types::SpellEffectType do
  describe 'status field' do
    it 'returns String type' do
      expect(described_class.fields['status'].type.to_s).to eq('String')
    end
  end

  describe 'actual field' do
    it 'returns Float type' do
      expect(described_class.fields['actual'].type.to_s).to eq('Float')
    end
  end

  describe 'previous field' do
    it 'returns Float type' do
      expect(described_class.fields['previous'].type.to_s).to eq('Float')
    end
  end
end
