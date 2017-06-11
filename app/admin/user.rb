ActiveAdmin.register User do
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

  permit_params :name, :email, :price, :created_at, :updated_at, :last_sign_in_ip, :current_sign_in_ip, :last_sign_in_at, :current_sign_in_at, :sign_in_count, :remember_created_at, :reset_password_sent_at, :encrypted_password, :reset_password_token

  index do
    selectable_column
    column :id
    column :name
    column :email
    column :sign_in_count
    column :created_at
    column :updated_at
    column :current_sign_in_at
    column :last_sign_in_at
    actions 
  end

end
