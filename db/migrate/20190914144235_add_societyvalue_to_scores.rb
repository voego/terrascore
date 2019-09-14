class AddSocietyvalueToScores < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :society_value, :integer
  end
end
