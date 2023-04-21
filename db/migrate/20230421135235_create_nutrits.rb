class CreateNutrits < ActiveRecord::Migration[6.1]
  def change
    create_table :nutrits do |t|
      t.text :trainer
      t.text :usertrainer
      t.text :nutritionplan
      t.date :dateofappointment

      t.timestamps
    end
  end
end
