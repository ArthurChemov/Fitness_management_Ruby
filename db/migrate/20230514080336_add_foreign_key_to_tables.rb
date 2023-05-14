class AddForeignKeyToTables < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :reviews, :users
    add_foreign_key :reviews, :trainers
    add_foreign_key :users, :trainers
    add_foreign_key :users, :trainings
    add_foreign_key :users, :nutrits
    add_foreign_key :users, :subscriptions
    add_foreign_key :users, :coupons
  end
end
