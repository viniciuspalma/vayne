require 'rails_helper'

describe Change do
  describe '.new' do
    context 'when has valid parameters' do
      let(:change) do
        Change.new(
          status: :buff,
          stats_evidences: []
        )
      end

      describe 'create a new change' do
        it 'returns the status of new change created' do
          expect(change.status).to eq('buff')
        end
      end
    end

    context 'when passed stats_evidences as parameter' do
      let(:stats_evidences) do
        StatsEvidence.new(
          status: :buff,
          attribute: 'foo',
          actual: 1.1,
          previous: 1.0
        )
      end
      let(:change) { Change.new(status: :buff, stats_evidences: [stats_evidences]) }

      describe 'create a new change' do
        it 'returns the stats_evidences passed as parameter' do
          expect(change.stats_evidences).to eq([stats_evidences])
        end
      end
    end
  end
end
