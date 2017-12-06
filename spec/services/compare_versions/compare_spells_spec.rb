require 'rails_helper'

describe CompareVersions::CompareSpells do
  describe '.call' do
    context 'when the spells of the new version are buffed' do
      let(:new_spells) do
        [
          build(:spell, effects: [["5.5", "5.5", "5.5"]]),
          build(:spell, effects: [["5.5", "5.5", "5.5"]])
        ]
      end
      let(:old_spells) do
        [
          build(:spell, effects: [["4.5", "4.5", "4.5"]]),
          build(:spell, effects: [["4.5", "4.5", "4.5"]])
        ]
      end

      let(:actual) { described_class.(new_spells: new_spells, old_spells: old_spells) }

      it 'returns spells spell' do
        expect(actual[0][:spell]).to eq new_spells[0].name
      end

      it 'returns buff for all effects' do
        expect(actual[0][:effects][0].map { |e| e[:status] }).to all(be :buff)
      end

      it 'returns actual for all effects' do
        expect(actual[0][:effects][0].map { |e| e[:actual] }).to all(be 5.5)
      end

      it 'returns previous for all effects' do
        expect(actual[0][:effects][0].map { |e| e[:previous] }).to all(be 4.5)
      end
    end

    context 'when the spells of the new version are nerfed' do
      let(:new_spells) do
        [
          build(:spell, effects: [["4.5", "4.5", "4.5"]]),
          build(:spell, effects: [["4.5", "4.5", "4.5"]])
        ]
      end
      let(:old_spells) do
        [
          build(:spell, effects: [["5.5", "5.5", "5.5"]]),
          build(:spell, effects: [["5.5", "5.5", "5.5"]])
        ]
      end

      let(:actual) { described_class.(new_spells: new_spells, old_spells: old_spells) }

      it 'returns spells spell' do
        expect(actual[0][:spell]).to eq new_spells[0].name
      end

      it 'returns buff for all effects' do
        expect(actual[0][:effects][0].map { |e| e[:status] }).to all(be :nerf)
      end

      it 'returns actual for all effects' do
        expect(actual[0][:effects][0].map { |e| e[:actual] }).to all(be 4.5)
      end

      it 'returns previous for all effects' do
        expect(actual[0][:effects][0].map { |e| e[:previous] }).to all(be 5.5)
      end
    end

    context 'when the spells of the new version is equal of another version' do
      let(:new_spells) do
        [
          build(:spell, effects: [["5.5", "5.5", "5.5"]]),
          build(:spell, effects: [["5.5", "5.5", "5.5"]])
        ]
      end
      let(:old_spells) do
        [
          build(:spell, effects: [["5.5", "5.5", "5.5"]]),
          build(:spell, effects: [["5.5", "5.5", "5.5"]])
        ]
      end

      let(:actual) { described_class.(new_spells: new_spells, old_spells: old_spells) }

      it 'returns spells spell' do
        expect(actual[0][:spell]).to eq new_spells[0].name
      end

      it 'returns buff for all effects' do
        expect(actual[0][:effects][0].map { |e| e[:status] }).to all(be :no_changes)
      end

      it 'returns actual for all effects' do
        expect(actual[0][:effects][0].map { |e| e[:actual] }).to all(be 5.5)
      end

      it 'returns previous for all effects' do
        expect(actual[0][:effects][0].map { |e| e[:previous] }).to all(be 5.5)
      end
    end

    context 'when the spells of the new version don\'t appear on previous version' do
      let(:new_spells) do
        [
          build(:spell, effects: [["5.5", "5.5", "5.5"]]),
          build(:spell, effects: [["5.5", "5.5", "5.5"]])
        ]
      end
      let(:old_spells) do
        [
          build(:spell, effects: []),
          build(:spell, effects: [])
        ]
      end

      let(:actual) { described_class.(new_spells: new_spells, old_spells: old_spells) }

      it 'returns spells spell' do
        expect(actual[0][:spell]).to eq new_spells[0].name
      end

      it 'returns buff for all effects' do
        expect(actual[0][:effects][0].map { |e| e[:status] }).to all(be :new)
      end

      it 'returns actual for all effects' do
        expect(actual[0][:effects][0].map { |e| e[:actual] }).to all(be 5.5)
      end

      it 'returns previous for all effects' do
        expect(actual[0][:effects][0].map { |e| e[:previous] }).to all(be 0.0)
      end
    end
  end
end
