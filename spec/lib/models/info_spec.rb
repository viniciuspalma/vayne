require File.expand_path '../../../spec_helper.rb', __FILE__

describe Info do
  describe '.new' do
    context 'when has valid parameters' do
      let(:info) do
        Info.new(
          difficulty: 2,
          attack: 1,
          defense: 10,
          magic: 5
        )
      end

      describe 'create a new info' do
        it 'returns a difficulty of new info created' do
          expect(info.difficulty).to eq(2)
        end

        it 'returns a attack of new info created' do
          expect(info.attack).to eq(1)
        end

        it 'returns a defense of new info created' do
          expect(info.defense).to eq(10)
        end

        it 'returns a magic of new info created' do
          expect(info.magic).to eq(5)
        end
      end
    end

    context 'when has invalid parameters' do
      describe 'create a new info' do
        it 'raise a error' do
          expect { Info.new(difficulty: 'foo') }.to raise_error(
             Dry::Struct::Error, %r["foo" \(String\) has invalid type for :difficulty]
          )
        end
      end
    end
  end
end
