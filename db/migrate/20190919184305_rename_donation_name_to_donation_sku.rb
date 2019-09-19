class RenameDonationNameToDonationSku < ActiveRecord::Migration[5.2]
  def change
    rename_column :orders, :donation_name, :donation_sku
  end
end
