class AddPriceToDonations < ActiveRecord::Migration[5.2]
  def change
    add_monetize :donations, :price, currency: { present: false }
  end
end
