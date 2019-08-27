class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.date :date
      t.string :month

      t.timestamps
    end
  end
end
