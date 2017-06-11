module MessagesHelper
  #s << "<option value='#{user.id}'>#{user.name}</option>"
  def recipients_options(chosen_recipient = nil)
    s = ''
    User.all.each do |user|
      s << "<option value='#{user.id}' #{'selected' if user == chosen_recipient}>#{user.name}</option>"
    end
    s.html_safe
  end

  def error
    format.html { redirect_to listings_path, notice: 'Listing was successfully created.' } 
  end
end