require File.expand_path '../../../spec_helper.rb', __FILE__

describe Champion do
  describe '.new' do
    context 'when has valid parameters' do
      let(:champion) do
        Champion.new(
          id: 1,
          name: 'foo',
          title: 'foo bar',
          lore: 'bar'
        )
      end

      describe 'create a new champion' do
        it 'returns the id of new champion created' do
          expect(champion.id).to eq(1)
        end

        it 'returns the name of new champion created' do
          expect(champion.name).to eq('foo')
        end

        it 'returns the title of new champion created' do
          expect(champion.title).to eq('foo bar')
        end

        it 'returns the lore of new champion created' do
          expect(champion.lore).to eq('bar')
        end
      end
    end

    context 'when has invalid parameters' do
      describe 'create a new champion' do
        it 'raise a error' do
          expect { Champion.new(id: 'ID') }.to raise_error(
             Dry::Struct::Error, %r["ID" \(String\) has invalid type for :id]
          )
        end
      end
    end

    context 'when passed stats as parameter' do
      let(:stats) { Stats.new(armorperlevel: 2.2) }
      let(:champion) { Champion.new(stats: stats) }

      describe 'create a new champion' do
        it 'returns the stats passed as parameter' do
          expect(champion.stats).to eq(stats)
        end
      end
    end

    context 'when passed info as parameter' do
      let(:info) { Info.new(difficulty: 2) }
      let(:champion) { Champion.new(info: info) }

      describe 'create a new champion' do
        it 'returns the info passed as parameter' do
          expect(champion.info).to eq(info)
        end
      end
    end

    context 'when passed image as parameter' do
      let(:image) { Image.new(full: 'foo.png') }
      let(:champion) { Champion.new(image: image) }

      describe 'create a new champion' do
        it 'returns the image passed as parameter' do
          expect(champion.image).to eq(image)
        end
      end
    end

    context 'when passed skin as parameter' do
      let(:skin) { Skin.new(name: 'foo') }
      let(:champion) { Champion.new(skins: [skin]) }

      describe 'create a new champion' do
        it 'returns the skin passed as parameter' do
          expect(champion.skins).to eq([skin])
        end
      end
    end
  end
end
