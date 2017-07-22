class CreateSkins < ActiveRecord::Migration[5.1]
  def change
    create_table :skins do |t|
      t.string :name
      t.integer :number
      t.integer :id_skin
      t.belongs_to :champion, index: true

      t.timestamps
    end
  end
end
