require File.expand_path '../../../spec_helper.rb', __FILE__

describe ImageType do
  describe '#to_s' do
    it 'returns type description' do
      expect(described_class.to_s).to eq('Image')
    end
  end

  describe 'full field' do
    it 'returns a String type' do
      expect(described_class.fields['full'].type.to_s).to eq('String')
    end
  end

  describe 'group field' do
    it 'returns a String type' do
      expect(described_class.fields['group'].type.to_s).to eq('String')
    end
  end

  describe 'sprite field' do
    it 'returns a String type' do
      expect(described_class.fields['sprite'].type.to_s).to eq('String')
    end
  end

  describe 'h field' do
    it 'returns a Int type' do
      expect(described_class.fields['h'].type.to_s).to eq('Int')
    end
  end

  describe 'w field' do
    it 'returns a Int type' do
      expect(described_class.fields['w'].type.to_s).to eq('Int')
    end
  end

  describe 'y field' do
    it 'returns a Int type' do
      expect(described_class.fields['y'].type.to_s).to eq('Int')
    end
  end

  describe 'x field' do
    it 'returns a Int type' do
      expect(described_class.fields['x'].type.to_s).to eq('Int')
    end
  end
end
