require File.expand_path '../../../spec_helper.rb', __FILE__

describe SkinType do
  describe '#to_s' do
    it 'returns type description' do
      expect(described_class.to_s).to eq('Skins of Champion')
    end
  end

  describe 'id field' do
    it 'returns a Int type' do
      expect(described_class.fields['id'].type.to_s).to eq('ID!')
    end
  end

  describe 'num field' do
    it 'returns a Int type' do
      expect(described_class.fields['num'].type.to_s).to eq('Int')
    end
  end

  describe 'name field' do
    it 'returns a String type' do
      expect(described_class.fields['name'].type.to_s).to eq('String')
    end
  end
end
