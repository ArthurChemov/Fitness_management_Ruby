class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.text :trainer
      t.text :usertrained
      t.date :dateoftraining
      t.integer :cost

      t.timestamps
    end
  end
end
