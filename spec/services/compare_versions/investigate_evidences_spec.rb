require 'rails_helper'

describe CompareVersions::InvestigateEvidences do
  describe '.call' do
    context 'when has all evidences of only one status' do
      context 'when all evidences are :no_change' do
        let(:evidences) do
          [
            { attribute: :hp, status: :no_changes },
            { attribute: :mp, status: :no_changes }
          ]
        end

        it 'returns no_change status' do
          expect(described_class.(evidences: evidences)).to eq(:no_changes)
        end
      end

      context 'when all evidences are :buff' do
        let(:evidences) do
          [
            { attribute: :hp, status: :buff },
            { attribute: :mp, status: :buff }
          ]
        end

        it 'returns buff status' do
          expect(described_class.(evidences: evidences)).to eq(:buff)
        end
      end

      context 'when all evidences are :nerf' do
        let(:evidences) do
          [
            { attribute: :hp, status: :nerf },
            { attribute: :mp, status: :nerf }
          ]
        end

        it 'returns nerf status' do
          expect(described_class.(evidences: evidences)).to eq(:nerf)
        end
      end
    end

    context 'when has differents evidences' do
      context 'has more buff evidences than nerf' do
        let(:evidences) do
          [
            { attribute: :hp, status: :buff },
            { attribute: :mp, status: :buff },
            { attribute: :armor, status: :nerf }
          ]
        end

        it 'returns buff status' do
          expect(described_class.(evidences: evidences)).to eq(:buff)
        end
      end

      context 'has more nerf evidences than buff' do
        let(:evidences) do
          [
            { attribute: :hp, status: :nerf },
            { attribute: :mp, status: :nerf },
            { attribute: :armor, status: :buff }
          ]
        end

        it 'returns nerf status' do
          expect(described_class.(evidences: evidences)).to eq(:nerf)
        end
      end
    end

    context 'when has differents evidences but same sizes of nerf and buff' do
      let(:evidences) do
        [
          { attribute: :hp, status: :nerf },
          { attribute: :mp, status: :buff }
        ]
      end

      it 'returns nerf status' do
        expect(described_class.(evidences: evidences)).to eq(:unknown)
      end
    end
  end
end
