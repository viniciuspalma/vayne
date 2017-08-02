class CreateSpells < ActiveRecord::Migration[5.1]
  def change
    create_table :spells do |t|
      t.integer :max_rank
      t.string :name
      t.string :description
      t.string :tooltip
      t.string :effects, array: true
      t.string :cost, array: true
      t.string :range, array: true
      t.string :cooldown, array: true
      t.belongs_to :champion, index: true

      t.timestamps
    end
  end
end
