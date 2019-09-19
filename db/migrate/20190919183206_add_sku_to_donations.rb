class AddSkuToDonations < ActiveRecord::Migration[5.2]
  def change
    add_column :donations, :sku, :string
  end
end
