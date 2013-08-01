class AddStockToProducts < ActiveRecord::Migration
  def change
    add_column :products, :stock, :integer, default: 0, null: false
  end
end
