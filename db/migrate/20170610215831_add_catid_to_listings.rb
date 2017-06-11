class AddCatidToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :catid, :integer
  end
end
