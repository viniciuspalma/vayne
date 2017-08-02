require 'rails_helper'

describe ChampionFactory do
  describe '.call' do
    let(:champion) do
      {
        id: 1,
        name: 'Foo',
        title: 'Foo Bar',
        lore: 'foo bar baz',
        partype: 'bar',
        tags: ['foo', 'bar'],
        allytips: ['foo', 'bar'],
        enemytips: ['foo', 'bar'],

        image: {
          full: 'foo.png',
          group: 'bar.png',
          sprite: 'baz.png',
          h: 10,
          w: 11,
          y: 12,
          x: 13
        },

        spells: [
          {
            maxrank: 5,
            name: 'Foo',
            sanitizedDescription: 'Foo bar baz foo',
            sanitizedTooltip: 'Foo bar baz foo',
            effect: [nil, [1, 2, 3], [1, 2, 3]],
            cost: [[1, 2, 3], [1, 2, 3]],
            range: [[1, 2, 3], [1, 2, 3]],
            cooldown: [[1, 2, 3], [1, 2, 3]]
          }
        ],

        skins: [
          {
            name:  'Foo',
            number: 1,
            id_skin: 2
          }
        ],

        stats: {
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
          critperlevel: 12.34
        }
      }
    end

    let(:build_champion) { described_class.(champion: champion, version: '1.1.1') }

    it 'return a champion model' do
      expect(build_champion.is_a?(Champion)).to be_truthy
    end

    it 'return a correct name' do
      expect(build_champion.name).to eq('Foo')
    end

    it 'return a correct version' do
      expect(build_champion.version).to eq('1.1.1')
    end
  end
end
