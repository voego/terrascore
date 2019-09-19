class AddPhotosToDonations < ActiveRecord::Migration[5.2]
  def change
    add_column :donations, :photo, :string
  end
end
