require File.expand_path '../../../spec_helper.rb', __FILE__

describe VersionType do
  describe '#to_s' do
    it 'returns type description' do
      expect(described_class.to_s).to eq('Version status of champion')
    end
  end

  describe 'number field' do
    it 'returns a String type' do
      expect(described_class.fields['number'].type.to_s).to eq('String')
    end
  end

  describe 'status field' do
    it 'returns a String type' do
      expect(described_class.fields['status'].type.to_s).to eq('String')
    end
  end
end
