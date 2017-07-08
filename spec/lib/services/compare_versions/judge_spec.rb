require File.expand_path '../../../../spec_helper.rb', __FILE__

describe CompareVersions::Judge do
  describe '.call' do
    context 'when the attributes are all equals' do
      let(:newer) { Info[{difficulty: 1, attack: 1, defense: 1, magic: 1}] }
      let(:older) { Info[{difficulty: 1, attack: 1, defense: 1, magic: 1}] }

      it 'returns no_changes status' do
        expect(described_class.(newer: newer, older: older)).to eq(:no_changes)
      end
    end

    context 'when the attributes are all buff' do
      let(:newer) { Info[{difficulty: 2, attack: 2, defense: 2, magic: 2}] }
      let(:older) { Info[{difficulty: 1, attack: 1, defense: 1, magic: 1}] }

      it 'returns no_changes status' do
        expect(described_class.(newer: newer, older: older)).to eq(:buff)
      end
    end

    context 'when the attributes are all nerf' do
      let(:newer) { Info[{difficulty: 1, attack: 1, defense: 1, magic: 1}] }
      let(:older) { Info[{difficulty: 2, attack: 2, defense: 2, magic: 2}] }

      it 'returns no_changes status' do
        expect(described_class.(newer: newer, older: older)).to eq(:nerf)
      end
    end
  end
end
