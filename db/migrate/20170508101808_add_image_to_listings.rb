class AddImageToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :image, :text
  end
end
