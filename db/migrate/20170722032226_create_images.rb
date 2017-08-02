class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :full
      t.string :group
      t.string :sprite
      t.integer :height
      t.integer :width
      t.integer :axis_y
      t.integer :axis_x
      t.references :imageable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
