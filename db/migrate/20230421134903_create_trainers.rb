class CreateTrainers < ActiveRecord::Migration[6.1]
  def change
    create_table :trainers do |t|
      t.string :trainername
      t.string :password

      t.timestamps
    end
  end
end
