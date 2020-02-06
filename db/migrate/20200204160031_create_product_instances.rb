class CreateProductInstances < ActiveRecord::Migration[6.0]
  def change
    create_table :product_instances do |t|
      t.references :cart, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity, default: 1

      t.timestamps
    end
  end
end
