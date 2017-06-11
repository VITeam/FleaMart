class ListingAttachmentsController < InheritedResources::Base
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :check_user, only: [:edit, :update, :destroy]
  private

    def listing_attachment_params
      params.require(:listing_attachment).permit(:listing_id, :photo)
    end
end

