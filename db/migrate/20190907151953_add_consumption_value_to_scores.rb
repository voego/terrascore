class AddConsumptionValueToScores < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :consumption_value, :integer
  end
end
