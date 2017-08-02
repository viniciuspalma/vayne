require 'rails_helper'

describe Types::ImageType do
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

  describe 'height field' do
    it 'returns a Int type' do
      expect(described_class.fields['height'].type.to_s).to eq('Int')
    end
  end

  describe 'width field' do
    it 'returns a Int type' do
      expect(described_class.fields['width'].type.to_s).to eq('Int')
    end
  end

  describe 'axis_y field' do
    it 'returns a Int type' do
      expect(described_class.fields['axis_y'].type.to_s).to eq('Int')
    end
  end

  describe 'axis_x field' do
    it 'returns a Int type' do
      expect(described_class.fields['axis_x'].type.to_s).to eq('Int')
    end
  end
end
