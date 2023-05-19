class FixNutritName < ActiveRecord::Migration[7.0]
  def change
    rename_column :subscriptions, :type, :subscriptiontype
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
