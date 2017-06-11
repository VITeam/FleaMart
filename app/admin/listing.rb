ActiveAdmin.register Listing do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  #index do
  #  column :name
  #  column :description
  #  column :price do |product|
  #    number_to_currency product.price
  #  end
  #    actions
  #end

  permit_params :name, :description, :price, :created_at, :updated_at, :image, :user_id, :catid

  config.clear_action_items!

  controller do
    actions :all, :except => [:edit]
  end

  index do
    selectable_column
    column :id
    column :name, max_width: "100px", min_width: "70px"
    column :description
    column :price
    column :created_at
    column :updated_at
    column :image
    column :user_id
    column :catid
    actions 
  end
end
