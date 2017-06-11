ActiveAdmin.register_page "Dashboard" do
    menu :priority => 1
    content :title => proc{ I18n.t("active_admin.dashboard") } do

      columns do
        column do
          panel "Останні користувачі" do
            table_for User.order("id desc").limit(10).each do |_user|
              column(:name)  { |user| link_to(user.name, admin_user_path(user)) }
              column(:email) { |user| link_to(user.email, admin_user_path(user)) }
              column(:updated_at) { |user| link_to(user.updated_at, admin_user_path(user)) }
            end
          end
        end
      end 

      columns do
        column do
          panel "Останні товари" do
            table_for Listing.order("id desc").limit(10).each do |_listing|
              column(:name)    { |listing| link_to(listing.name, admin_user_path(listing)) }
              column(:description)    { |listing| link_to(listing.description, admin_user_path(listing)) }
            end
          end
        end
      end 

    end
end 