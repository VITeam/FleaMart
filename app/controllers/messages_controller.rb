class MessagesController < ApplicationController
  before_action :authenticate_user!

  def new
    @chosen_recipient = User.find_by(id: params[:to].to_i) if params[:to]
  end

  def create
    test = params[:message][:subject].split("/")
    listing = Listing.find_by id: test[test.count-1]

    user = User.find_by id: listing.user_id

    recipients = User.where(id: listing.user_id)
    conversation = current_user.send_message(recipients, params[:message][:body], listing.name).conversation
    flash[:success] = "Message has been sent!"
    redirect_to conversation_path(conversation)
  end
end
