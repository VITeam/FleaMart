class CreateListingAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :listing_attachments do |t|
      t.integer :listing_id
      t.string :photo

      t.timestamps
    end
  end
end
