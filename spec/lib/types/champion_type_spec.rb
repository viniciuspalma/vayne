require File.expand_path '../../../spec_helper.rb', __FILE__

describe ChampionType do
  describe 'id field' do
    it 'returns String type' do
      expect(described_class.fields['id'].type.to_s).to eq('ID!')
    end
  end

  describe 'name field' do
    it 'returns String type' do
      expect(described_class.fields['name'].type.to_s).to eq('String')
    end
  end

  describe 'title field' do
    it 'returns String type' do
      expect(described_class.fields['title'].type.to_s).to eq('String')
    end
  end

  describe 'lore field' do
    it 'returns String type' do
      expect(described_class.fields['lore'].type.to_s).to eq('String')
    end
  end

  describe 'info field' do
    it 'returns InfoType type' do
      expect(described_class.fields['info'].type.to_s).to eq('Informations of Champion')
    end
  end

  describe 'stats field' do
    it 'returns StatsType type' do
      expect(described_class.fields['stats'].type.to_s).to eq('Stats of Champion')
    end
  end

  describe 'image field' do
    it 'returns ImageType type' do
      expect(described_class.fields['image'].type.to_s).to eq('Image')
    end
  end
end
