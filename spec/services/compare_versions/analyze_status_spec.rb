require 'rails_helper'

require 'rails_helper'

describe CompareVersions::AnalyzeStatus do
  describe '.call' do
    context 'when the actual value is higher of previous value' do
      it 'returns buff status' do
        expect(described_class.(actual: 2.0, previous: 1.0)).to eq(:buff)
      end
    end

    context 'when the actual value is lower of previous value' do
      it 'returns buff status' do
        expect(described_class.(actual: 1.0, previous: 2.0)).to eq(:nerf)
      end
    end

    context 'when the actual value is equal of previous value' do
      it 'returns buff status' do
        expect(described_class.(actual: 1.0, previous: 1.0)).to eq(:no_changes)
      end
    end
  end
end
