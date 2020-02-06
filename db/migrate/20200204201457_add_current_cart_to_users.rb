class AddCurrentCartToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :current_cart, :integer, default: 'null'
  end
end
