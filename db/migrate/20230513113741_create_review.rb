class CreateReview < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :trainer_id
      t.integer :rate
      t.string :description

      t.timestamps
    end
  end
end
