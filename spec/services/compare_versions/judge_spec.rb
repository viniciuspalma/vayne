require 'rails_helper'

describe CompareVersions::Judge do
  describe '.call' do
    context 'when the attributes are all equals' do
      let(:spells) { [OpenStruct.new({ name: 'foo', effects: [[1, 2], [3, 4]] })] }
      let(:stats) { OpenStruct.new({ difficulty: 1, attack: 1, attributes: {difficulty: "", attack: ""} }) }

      let(:version) { OpenStruct.new({ stats: stats, spells: spells }) }

      it 'returns no_changes status' do
        expect(described_class.(newer: version, older: version)[:status]).to eq(:no_changes)
      end
    end

    context 'when the attributes are all buff' do
      let(:newer) do
        OpenStruct.new({
          stats: OpenStruct.new({ difficulty: 2, attack: 2, attributes: {difficulty: "", attack: ""} }),
          spells: [
            OpenStruct.new({ name: 'foo', effects: [[2, 3], [4, 5]] })
          ]
        })
      end

      let(:older) do
        OpenStruct.new({
          stats: OpenStruct.new({ difficulty: 1, attack: 1, attributes: {difficulty: "", attack: ""} }),
          spells: [
            OpenStruct.new({ name: 'foo', effects: [[1, 2], [3, 4]] })
          ]
        })
      end

      it 'returns no_changes status' do
        expect(described_class.(newer: newer, older: older)[:status]).to eq(:buff)
      end
    end

    context 'when the attributes are all nerf' do
      let(:newer) do
        OpenStruct.new({
          stats: OpenStruct.new({ difficulty: 1, attack: 1, attributes: {difficulty: "", attack: ""} }),
          spells: [
            OpenStruct.new({ name: 'foo', effects: [[1, 2], [3, 4]] })
          ]
        })
      end

      let(:older) do
        OpenStruct.new({
          stats: OpenStruct.new({ difficulty: 2, attack: 2, attributes: {difficulty: "", attack: ""} }),
          spells: [
            OpenStruct.new({ name: 'foo', effects: [[2, 3], [4, 5]] })
          ]
        })
      end

      it 'returns no_changes status' do
        expect(described_class.(newer: newer, older: older)[:status]).to eq(:nerf)
      end
    end
  end
end
