require 'rails_helper'

describe SpellEvidence do
  describe '.new' do
    context 'when has valid parameters' do
      let(:spell_evidence) do
        SpellEvidence.new(
          spell: 'Final hour',
          description: 'foo',
          tooltip: 'bar',
          effects: []
        )
      end

      describe 'create a new spell_evidence' do
        it 'returns the spell of new spell_evidence created' do
          expect(spell_evidence.spell).to eq('Final hour')
        end

        it 'returns the description of new spell_evidence created' do
          expect(spell_evidence.description).to eq('foo')
        end

        it 'returns the tooltip of new spell_evidence created' do
          expect(spell_evidence.tooltip).to eq('bar')
        end

        it 'returns the effects of new spell_evidence created' do
          expect(spell_evidence.effects).to eq([])
        end
      end
    end

    context 'when passed effects as parameter' do
      let(:effects) do
        SpellEffect.new(
          status: :buff,
          actual: 1.0,
          previous: 1.0
        )
      end

      let(:spell_evidence) do
        SpellEvidence.new(
          spell: 'Final hour',
          description: 'foo',
          tooltip: 'bar',
          effects: [effects]
        )
      end

      describe 'create a new spell_evidence' do
        it 'returns the effects passed as parameter' do
          expect(spell_evidence.effects).to eq([effects])
        end
      end
    end
  end
end
