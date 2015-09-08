class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :user_id
      t.date :purchased_date
      t.string :place
      t.decimal :total_amount

      t.timestamps null: false
    end
  end
end
