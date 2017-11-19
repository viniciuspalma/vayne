require 'rails_helper'

describe Resolvers::ChangesResolver do
  describe '.call' do
    let(:champion) { create :champion, name: 'vayne', version: '2.2.2' }
    let!(:champion_previous) { create :champion, name: 'vayne', version: '1.1.1' }

    it 'returns a change' do
      expect(described_class.(champion: champion)).to be_kind_of(Change)
    end
  end
end
