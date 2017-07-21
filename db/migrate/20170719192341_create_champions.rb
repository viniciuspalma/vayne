class CreateChampions < ActiveRecord::Migration[5.1]
  def change
    create_table :champions do |t|
      t.string :version, index: true
      t.string :api_id, index: true
      t.string :name
      t.string :title
      t.text :lore
      t.string :partype
      t.string :tags, array: true
      t.string :ally_tips, array: true
      t.string :enemy_tips, array: true

      t.timestamps
    end

    add_index :champions, :tags, using: 'gin'
    add_index :champions, :ally_tips, using: 'gin'
    add_index :champions, :enemy_tips, using: 'gin'
  end
end
