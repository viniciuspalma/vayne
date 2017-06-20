require File.expand_path '../../../spec_helper.rb', __FILE__

describe InfoType do
  describe '#to_s' do
    it 'returns type description' do
      expect(described_class.to_s).to eq('Informations of Champion')
    end
  end

  describe 'difficulty field' do
    it 'returns a Int type' do
      expect(described_class.fields['difficulty'].type.to_s).to eq('Int')
    end
  end

  describe 'attack field' do
    it 'returns a Int type' do
      expect(described_class.fields['attack'].type.to_s).to eq('Int')
    end
  end

  describe 'defense field' do
    it 'returns a Int type' do
      expect(described_class.fields['defense'].type.to_s).to eq('Int')
    end
  end

  describe 'magic field' do
    it 'returns a Int type' do
      expect(described_class.fields['magic'].type.to_s).to eq('Int')
    end
  end
end
