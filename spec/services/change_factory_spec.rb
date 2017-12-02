require 'rails_helper'

describe ChangeFactory do
  describe '.call' do
    let(:change) do
      {
        status: :buff,
        evidences: [
          {
            attribute: 'hp',
            status: :buff,
            actual: 200.00,
            previous: 100.00
          },
          {
            spell: 'Final hour',
            description: 'foo',
            tooltip: 'bar',
            effects: [
              {
                status: :buff,
                actual: 200.00,
                previous: 100.00
              }
            ]
          }
        ]
      }
    end

    context 'when pass correct params' do
      it 'returns a change object' do
        expect(described_class.(change: change)).to be_kind_of(Change)
      end

      it 'returns a correct status' do
        expect(described_class.(change: change).status).to eq('buff')
      end

      it 'returns a correct size of stat evidences' do
        expect(described_class.(change: change).stats_evidences.size).to eq(1)
      end
    end
  end
end
