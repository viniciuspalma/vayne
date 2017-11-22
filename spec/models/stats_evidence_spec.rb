require 'rails_helper'

describe StatsEvidence do
  describe '.new' do
    context 'when has valid parameters' do
      let(:stats_evidence) do
        StatsEvidence.new(
          status: :bar,
          attribute: 'foo',
          actual: 1.1,
          previous: 1.1
        )
      end

      describe 'create a new stats_evidence' do
        it 'returns the status of new stats_evidence created' do
          expect(stats_evidence.status).to eq('bar')
        end

        it 'returns the attribute of new stats_evidence created' do
          expect(stats_evidence.attribute).to eq('foo')
        end

        it 'returns the actual of new stats_evidence created' do
          expect(stats_evidence.actual).to eq(1.1)
        end

        it 'returns the previous of new stats_evidence created' do
          expect(stats_evidence.previous).to eq(1.1)
        end
      end
    end
  end
end
