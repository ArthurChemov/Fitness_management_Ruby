class CreateNutrit < ActiveRecord::Migration[6.1]
  def change
    create_table :nutrits do |t|
      t.string :name
      t.string :description
      t.integer :callories
      t.integer :protein
      t.integer :fats
      t.integer :carbohydrates

      t.timestamps
    end
  end
end
