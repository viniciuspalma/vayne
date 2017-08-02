require 'rails_helper'

describe Types::QueryType do
  describe '#to_s' do
    it 'returns type description' do
      expect(described_class.to_s).to eq('Query')
    end
  end

  describe 'FindChampion query field' do
    it 'returns a Champion type' do
      expect(described_class.fields['FindChampion'].type.to_s).to eq('Champion')
    end
  end

  describe 'FindChampions query field' do
    it 'returns a List of Champions type' do
      expect(described_class.fields['FindChampions'].type.to_s).to eq('[Champion]')
    end
  end

  describe 'AllChampions query field' do
    it 'returns a List of Champions type' do
      expect(described_class.fields['AllChampions'].type.to_s).to eq('[Champion]')
    end
  end
end
