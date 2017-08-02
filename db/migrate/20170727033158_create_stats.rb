class CreateStats < ActiveRecord::Migration[5.1]
  def change
    create_table :stats do |t|
      t.float :armorperlevel
      t.float :hpperlevel
      t.float :attackdamage
      t.float :mpperlevel
      t.float :attackspeedoffset
      t.float :armor
      t.float :hp
      t.float :hpregenperlevel
      t.float :spellblock
      t.float :attackrange
      t.float :movespeed
      t.float :attackdamageperlevel
      t.float :mpregenperlevel
      t.float :mp
      t.float :spellblockperlevel
      t.float :crit
      t.float :mpregen
      t.float :attackspeedperlevel
      t.float :hpregen
      t.float :critperlevel
      t.belongs_to :champion, index: true

      t.timestamps
    end
  end
end
