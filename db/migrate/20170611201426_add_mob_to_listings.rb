class AddMobToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :mob, :string
  end
end
