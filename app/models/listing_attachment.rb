class ListingAttachment < ApplicationRecord
    mount_uploader :photo, PhotoUploader
    belongs_to :listing
end
