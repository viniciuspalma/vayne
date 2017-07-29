require 'rails_helper'

describe Types::StatsType do
  describe '#to_s' do
    it 'returns type description' do
      expect(described_class.to_s).to eq('Stats')
    end
  end

  describe 'armorperlevel field' do
    it 'returns a Float type' do
      expect(described_class.fields['armorperlevel'].type.to_s).to eq('Float')
    end
  end

  describe 'hpperlevel field' do
    it 'returns a Float type' do
      expect(described_class.fields['hpperlevel'].type.to_s).to eq('Float')
    end
  end

  describe 'attackdamage field' do
    it 'returns a Float type' do
      expect(described_class.fields['attackdamage'].type.to_s).to eq('Float')
    end
  end

  describe 'mpperlevel field' do
    it 'returns a Float type' do
      expect(described_class.fields['mpperlevel'].type.to_s).to eq('Float')
    end
  end

  describe 'attackspeedoffset field' do
    it 'returns a Float type' do
      expect(described_class.fields['attackspeedoffset'].type.to_s).to eq('Float')
    end
  end

  describe 'armor field' do
    it 'returns a Float type' do
      expect(described_class.fields['armor'].type.to_s).to eq('Float')
    end
  end

  describe 'hp field' do
    it 'returns a Float type' do
      expect(described_class.fields['hp'].type.to_s).to eq('Float')
    end
  end

  describe 'hpregenperlevel field' do
    it 'returns a Float type' do
      expect(described_class.fields['hpregenperlevel'].type.to_s).to eq('Float')
    end
  end

  describe 'spellblock field' do
    it 'returns a Float type' do
      expect(described_class.fields['spellblock'].type.to_s).to eq('Float')
    end
  end

  describe 'attackrange field' do
    it 'returns a Float type' do
      expect(described_class.fields['attackrange'].type.to_s).to eq('Float')
    end
  end

  describe 'movespeed field' do
    it 'returns a Float type' do
      expect(described_class.fields['movespeed'].type.to_s).to eq('Float')
    end
  end

  describe 'attackdamageperlevel field' do
    it 'returns a Float type' do
      expect(described_class.fields['attackdamageperlevel'].type.to_s).to eq('Float')
    end
  end

  describe 'mpregenperlevel field' do
    it 'returns a Float type' do
      expect(described_class.fields['mpregenperlevel'].type.to_s).to eq('Float')
    end
  end

  describe 'mp field' do
    it 'returns a Float type' do
      expect(described_class.fields['mp'].type.to_s).to eq('Float')
    end
  end

  describe 'spellblockperlevel field' do
    it 'returns a Float type' do
      expect(described_class.fields['spellblockperlevel'].type.to_s).to eq('Float')
    end
  end

  describe 'crit field' do
    it 'returns a Float type' do
      expect(described_class.fields['crit'].type.to_s).to eq('Float')
    end
  end

  describe 'mpregen field' do
    it 'returns a Float type' do
      expect(described_class.fields['mpregen'].type.to_s).to eq('Float')
    end
  end

  describe 'attackspeedperlevel field' do
    it 'returns a Float type' do
      expect(described_class.fields['attackspeedperlevel'].type.to_s).to eq('Float')
    end
  end

  describe 'hpregen field' do
    it 'returns a Float type' do
      expect(described_class.fields['hpregen'].type.to_s).to eq('Float')
    end
  end

  describe 'critperlevel field' do
    it 'returns a Float type' do
      expect(described_class.fields['critperlevel'].type.to_s).to eq('Float')
    end
  end
end
