class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :purchase_id
      t.integer :category_id
      t.string :item_name
      t.decimal :item_cost
      t.integer :item_quantity
      t.decimal :item_total_cost
      t.text :item_notes

      t.timestamps null: false
    end
  end
end
