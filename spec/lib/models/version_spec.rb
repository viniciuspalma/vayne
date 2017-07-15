require File.expand_path '../../../spec_helper.rb', __FILE__

describe Version do
  describe '.new' do
    context 'when has valid parameters' do
      let(:version) do
        Version.new(
          number: '0.0.1',
          status: 'no_changes'
        )
      end

      describe 'create a new version' do
        it 'returns a number of new version created' do
          expect(version.number).to eq('0.0.1')
        end

        it 'returns a status of new version created' do
          expect(version.status).to eq('no_changes')
        end
      end
    end

    context 'when has invalid parameters' do
      describe 'create a new version' do
        it 'raise a error' do
          expect { Version.new(number: 1) }.to raise_error(
             Dry::Struct::Error, %r[1 \(Integer\) has invalid type for :number]
          )
        end
      end
    end
  end
end
