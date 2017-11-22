require 'rails_helper'

describe Types::ChangeType do
  describe 'status field' do
    it 'returns String type' do
      expect(described_class.fields['status'].type.to_s).to eq('String')
    end
  end

  describe 'stats_evidences field' do
    it 'returns StatsEvidenceType type' do
      expect(described_class.fields['stats_evidences'].type.to_s).to eq('[Stats Evidence]')
    end
  end
end
