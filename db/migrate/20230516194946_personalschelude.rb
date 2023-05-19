class Personalschelude < ActiveRecord::Migration[7.0]
  def change
    create_table :personalschelude do |t|
      t.belongs_to :users, trainers: true, foreign_key: true
  
    end
  end
end
