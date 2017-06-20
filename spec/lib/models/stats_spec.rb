require File.expand_path '../../../spec_helper.rb', __FILE__

describe Stats do
  describe '.new' do
    context 'when has valid parameters' do
      let(:stats) do
        Stats.new(
          armorperlevel: 12.34,
          hpperlevel: 12.34,
          attackdamage: 12.34,
          mpperlevel: 12.34,
          attackspeedoffset: 12.34,
          armor: 12.34,
          hp: 12.34,
          hpregenperlevel: 12.34,
          spellblock: 12.34,
          attackrange: 12.34,
          movespeed: 12.34,
          attackdamageperlevel: 12.34,
          mpregenperlevel: 12.34,
          mp: 12.34,
          spellblockperlevel: 12.34,
          crit: 12.34,
          mpregen: 12.34,
          attackspeedperlevel: 12.34,
          hpregen: 12.34,
          critperlevel: 12.34,
        )
      end

      describe 'create a new stats' do
        it 'returns armorperlevel of new stats created' do
          expect(stats.armorperlevel).to eq(12.34)
        end

        it 'returns hpperlevel of new stats created' do
          expect(stats.hpperlevel).to eq(12.34)
        end

        it 'returns attackdamage of new stats created' do
          expect(stats.attackdamage).to eq(12.34)
        end

        it 'returns mpperlevel of new stats created' do
          expect(stats.mpperlevel).to eq(12.34)
        end

        it 'returns attackspeedoffset of new stats created' do
          expect(stats.attackspeedoffset).to eq(12.34)
        end

        it 'returns armor of new stats created' do
          expect(stats.armor).to eq(12.34)
        end

        it 'returns hp of new stats created' do
          expect(stats.hp).to eq(12.34)
        end

        it 'returns hpregenperlevel of new stats created' do
          expect(stats.hpregenperlevel).to eq(12.34)
        end

        it 'returns spellblock of new stats created' do
          expect(stats.spellblock).to eq(12.34)
        end

        it 'returns attackrange of new stats created' do
          expect(stats.attackrange).to eq(12.34)
        end

        it 'returns movespeed of new stats created' do
          expect(stats.movespeed).to eq(12.34)
        end

        it 'returns attackdamageperlevel of new stats created' do
          expect(stats.attackdamageperlevel).to eq(12.34)
        end

        it 'returns mpregenperlevel of new stats created' do
          expect(stats.mpregenperlevel).to eq(12.34)
        end

        it 'returns mp of new stats created' do
          expect(stats.mp).to eq(12.34)
        end

        it 'returns spellblockperlevel of new stats created' do
          expect(stats.spellblockperlevel).to eq(12.34)
        end

        it 'returns crit of new stats created' do
          expect(stats.crit).to eq(12.34)
        end

        it 'returns mpregen of new stats created' do
          expect(stats.mpregen).to eq(12.34)
        end

        it 'returns attackspeedperlevel of new stats created' do
          expect(stats.attackspeedperlevel).to eq(12.34)
        end

        it 'returns hpregen of new stats created' do
          expect(stats.hpregen).to eq(12.34)
        end

        it 'returns critperlevel of new stats created' do
          expect(stats.critperlevel).to eq(12.34)
        end

      end
    end

    context 'when has invalid parameters' do
      describe 'create a new stats' do
        it 'raise a error' do
          expect { Stats.new(hp: 'foo') }.to raise_error(
             Dry::Struct::Error, %r["foo" \(String\) has invalid type for :hp]
          )
        end
      end
    end
  end
end
