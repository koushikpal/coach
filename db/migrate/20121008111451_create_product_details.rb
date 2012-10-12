class CreateProductDetails < ActiveRecord::Migration
  def change
    create_table :product_details do |t|
      t.string :item
      t.integer :market_price
      t.integer :coach_price

      t.timestamps
    end
  end
end
