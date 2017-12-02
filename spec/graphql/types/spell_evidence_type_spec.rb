require 'rails_helper'

describe Types::SpellEvidenceType do
  describe 'spell field' do
    it 'returns String type' do
      expect(described_class.fields['spell'].type.to_s).to eq('String')
    end
  end

  describe 'description field' do
    it 'returns String type' do
      expect(described_class.fields['description'].type.to_s).to eq('String')
    end
  end

  describe 'tooltip field' do
    it 'returns String type' do
      expect(described_class.fields['tooltip'].type.to_s).to eq('String')
    end
  end

  describe 'effects field' do
    it 'returns SpellEffectType type' do
      expect(described_class.fields['effects'].type.to_s).to eq('[Spell Effect]')
    end
  end
end
