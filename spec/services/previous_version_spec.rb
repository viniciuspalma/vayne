require 'rails_helper'

describe PreviousVersion do
  describe '.call' do
    context 'when there are versions from champions' do
      let!(:champion_one) { create :champion, version: '1.1.1' }
      let!(:champion_two) { create :champion, version: '2.2.2' }

      context 'when there is previous version' do
        it 'returns previous version' do
          expect(described_class.(version: '2.2.2')).to eq('1.1.1')
        end
      end

      context 'when there isn\'t previous version' do
        it 'returns nil' do
          expect(described_class.(version: '1.1.1')).to be_nil
        end
      end
    end

    context 'when there aren\'t versions' do
      it 'returns previous version' do
        expect(described_class.(version: '2.2.2')).to be_nil
      end
    end
  end
end
