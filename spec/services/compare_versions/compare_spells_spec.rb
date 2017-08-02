require 'rails_helper'

describe CompareVersions::CompareSpells do
  describe '.call' do
    context 'when the spells of the new version are buffed' do
      let(:new_spells) { [OpenStruct.new({name: 'foo', effect: [nil, [2]] })] }
      let(:old_spells) { [OpenStruct.new({name: 'foo', effect: [nil, [1]] })] }

      it 'returns spell name' do
        expect(
          described_class.(new_spells: new_spells, old_spells: old_spells)[0][:spell]
        ).to eq 'foo'
      end

      it 'returns buff' do
        expect(
          described_class.(new_spells: new_spells, old_spells: old_spells)[0][:status]
        ).to eq :buff
      end
    end

    context 'when the spells of the new version are nerfed' do
      let(:new_spells) { [OpenStruct.new({name: 'foo', effect: [nil, [1]] })] }
      let(:old_spells) { [OpenStruct.new({name: 'foo', effect: [nil, [2]] })] }

      it 'returns spell name' do
        expect(
          described_class.(new_spells: new_spells, old_spells: old_spells)[0][:spell]
        ).to eq 'foo'
      end

      it 'returns nerf' do
        expect(
          described_class.(new_spells: new_spells, old_spells: old_spells)[0][:status]
        ).to eq :nerf
      end
    end

    context 'when the spells of the new version is equal of another version' do
      let(:new_spells) { [OpenStruct.new({name: 'foo', effect: [nil, [1]] })] }
      let(:old_spells) { [OpenStruct.new({name: 'foo', effect: [nil, [1]] })] }

      it 'returns spell name' do
        expect(
          described_class.(new_spells: new_spells, old_spells: old_spells)[0][:spell]
        ).to eq 'foo'
      end

      it 'returns no changes' do
        expect(
          described_class.(new_spells: new_spells, old_spells: old_spells)[0][:status]
        ).to eq :no_changes
      end
    end
  end
end
