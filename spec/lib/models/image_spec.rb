require File.expand_path '../../../spec_helper.rb', __FILE__

describe Image do
  describe '.new' do
    context 'when has valid parameters' do
      let(:image) do
        Image.new(
          full: 'foo.png',
          group: 'foo',
          sprite: 'bar',
          h: 1,
          w: 10,
          x: 100,
          y: 100
        )
      end

      describe 'create a new image' do
        it 'returns a full of new image created' do
          expect(image.full).to eq('foo.png')
        end

        it 'returns a group of new image created' do
          expect(image.group).to eq('foo')
        end

        it 'returns a sprite of new image created' do
          expect(image.sprite).to eq('bar')
        end

        it 'returns a height of new image created' do
          expect(image.h).to eq(1)
        end

        it 'returns a width of new image created' do
          expect(image.w).to eq(10)
        end

        it 'returns a axio x of new image created' do
          expect(image.x).to eq(100)
        end

        it 'returns a axio y of new image created' do
          expect(image.y).to eq(100)
        end
      end
    end

    context 'when has invalid parameters' do
      describe 'create a new image' do
        it 'raise a error' do
          expect { Image.new(full: 5) }.to raise_error(
             Dry::Struct::Error, %r[5 \(Integer\) has invalid type for :full]
          )
        end
      end
    end
  end
end
