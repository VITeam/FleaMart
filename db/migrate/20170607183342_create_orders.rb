class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :address
      t.string :city
      t.string :region

      t.timestamps
    end
  end
end
