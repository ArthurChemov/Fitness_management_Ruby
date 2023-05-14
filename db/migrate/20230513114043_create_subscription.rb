class CreateSubscription < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|
      t.string :type
      t.date :date_start
      t.date :date_end
      t.integer :price

      t.timestamps
    end
  end
end
