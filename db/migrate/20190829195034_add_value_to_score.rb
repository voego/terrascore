class AddValueToScore < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :value, :integer
  end
end
