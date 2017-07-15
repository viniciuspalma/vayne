require File.expand_path '../../../spec_helper.rb', __FILE__

describe Spell do
  describe '.new' do
    context 'when has valid parameters' do
      let(:spell) do
        Spell.new(
          name: 'foo',
          description: 'bar',
          sanitizedTooltip: 'foobar',
          maxrank: 5,
          cost: [1, 2, 3, 4, 5],
          range: [1, 2, 3, 4, 5],
          effect: [[1, 2, 3], [1, 2, 3]],
          cooldown: [1.1, 2.2, 3.3, 4.4, 5.5]
        )
      end

      describe 'create a new spell' do
        it 'returns a name of new spell created' do
          expect(spell.name).to eq('foo')
        end

        it 'returns the description of new spell created' do
          expect(spell.description).to eq('bar')
        end

        it 'returns the sanitizedTooltip of new spell created' do
          expect(spell.sanitizedTooltip).to eq('foobar')
        end

        it 'returns the maxrank of new spell created' do
          expect(spell.maxrank).to eq(5)
        end

        it 'returns the cost of new spell created' do
          expect(spell.cost).to eq([1, 2, 3, 4, 5])
        end

        it 'returns the range of new spell created' do
          expect(spell.range).to eq([1, 2, 3, 4, 5])
        end

        it 'returns the effect of new spell created' do
          expect(spell.effect).to eq([[1, 2, 3], [1, 2, 3]])
        end

        it 'returns the cooldown of new spell created' do
          expect(spell.cooldown).to eq([1.1, 2.2, 3.3, 4.4, 5.5])
        end
      end
    end

    context 'when has invalid parameters' do
      describe 'create a new spell' do
        it 'raise a error' do
          expect { Spell.new(name: 1) }.to raise_error(
             Dry::Struct::Error, %r[1 \(Integer\) has invalid type for :name]
          )
        end
      end
    end

    context 'when passed image as parameter' do
      let(:image) { Image.new(full: 'foo.png') }
      let(:spell) { Spell.new(image: image) }

      describe 'create a new spell' do
        it 'returns the image passed as parameter' do
          expect(spell.image).to eq(image)
        end
      end
    end

    context 'when passed spell_variable as parameter' do
      let(:spell_variable) { SpellVariable.new(key: 'foo') }
      let(:spell) { Spell.new(vars: [spell_variable]) }

      describe 'create a new spell' do
        it 'returns the spell_variable passed as parameter' do
          expect(spell.vars).to eq([spell_variable])
        end
      end
    end
  end
end
