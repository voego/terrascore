class AddColumnsToScores < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :travel_value, :integer
    add_column :scores, :home_value, :integer
  end
end
