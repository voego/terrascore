class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :state
      t.string :donation_name
      t.monetize :amount, currency: { present: false }
      t.string :checkout_session_id
      t.references :user, foreign_key: true
      t.references :donation, foreign_key: true

      t.timestamps
    end
  end
end
