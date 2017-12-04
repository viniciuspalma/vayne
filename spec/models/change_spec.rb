require 'rails_helper'

describe Change do
  describe '.new' do
    context 'when has valid parameters' do
      let(:change) do
        Change.new(
          status: :buff,
          stats_evidences: [],
          spell_evidences: []
        )
      end

      describe 'create a new change' do
        it 'returns the status of new change created' do
          expect(change.status).to eq('buff')
        end
      end
    end

    context 'when passed stats_evidences and spell_evidences as parameter' do
      let(:stats_evidences) do
        StatsEvidence.new(
          status: :buff,
          attribute: 'foo',
          actual: 1.1,
          previous: 1.0
        )
      end

      let(:spell_evidences) do
        SpellEvidence.new(
          spell: 'Final hour',
          description: 'foo',
          tooltip: 'bar',
          effects: []
        )
      end

      let(:change) do
        Change.new(
          status: :buff,
          stats_evidences: [stats_evidences],
          spell_evidences: [spell_evidences]
        )
      end

      describe 'create a new change' do
        it 'returns the stats_evidences passed as parameter' do
          expect(change.stats_evidences).to eq([stats_evidences])
        end

        it 'returns the spell_evidences passed as parameter' do
          expect(change.spell_evidences).to eq([spell_evidences])
        end
      end
    end
  end
end
