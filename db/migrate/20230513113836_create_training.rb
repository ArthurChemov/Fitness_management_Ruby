class CreateTraining < ActiveRecord::Migration[6.1]
  def change
    create_table :trainings do |t|
      t.string :name
      t.string :description
      t.integer :rate

      t.timestamps
    end
  end
end
