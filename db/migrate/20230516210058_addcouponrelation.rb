class Addcouponrelation < ActiveRecord::Migration[7.0]
  def change
    create_table :coupons do |t|
      t.string :coupons
      t.text :body

      t.timestamps
    end
    add_foreign_key :users, :coupons
  end
end
