class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.references :question, foreign_key: true
      t.string :content
      t.integer :weight

      t.timestamps
    end
  end
end
