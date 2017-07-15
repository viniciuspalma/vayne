require File.expand_path '../../../spec_helper.rb', __FILE__

describe SpellVariable do
  describe '.new' do
    context 'when has valid parameters' do
      let(:spell_variable) do
        SpellVariable.new(
          key: 'foo',
          link: 'bar',
          coeff: [1, 2, 3, 4, 5]
        )
      end

      describe 'create a new spell_variable' do
        it 'returns a key of new spell_variable created' do
          expect(spell_variable.key).to eq('foo')
        end

        it 'returns a link of new spell_variable created' do
          expect(spell_variable.link).to eq('bar')
        end

        it 'returns a coeff of new spell_variable created' do
          expect(spell_variable.coeff).to eq([1, 2, 3, 4, 5])
        end
      end
    end

    context 'when has invalid parameters' do
      describe 'create a new spell_variable' do
        it 'raise a error' do
          expect { SpellVariable.new(key: 1) }.to raise_error(
             Dry::Struct::Error, %r[1 \(Integer\) has invalid type for :key]
          )
        end
      end
    end
  end
end
