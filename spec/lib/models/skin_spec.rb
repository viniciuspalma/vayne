require File.expand_path '../../../spec_helper.rb', __FILE__

describe Skin do
  describe '.new' do
    context 'when has valid parameters' do
      let(:skin) do
        Skin.new(
          id: 1,
          num: 10,
          name: 'foo'
        )
      end

      describe 'create a new skin' do
        it 'returns a id of new skin created' do
          expect(skin.id).to eq(1)
        end

        it 'returns a group of new skin created' do
          expect(skin.num).to eq(10)
        end

        it 'returns a sprite of new skin created' do
          expect(skin.name).to eq('foo')
        end
      end
    end

    context 'when has invalid parameters' do
      describe 'create a new skin' do
        it 'raise a error' do
          expect { Skin.new(name: 5) }.to raise_error(
             Dry::Struct::Error, %r[5 \(Integer\) has invalid type for :name]
          )
        end
      end
    end
  end
end
