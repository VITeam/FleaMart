require 'test_helper'

class ListingAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listing_attachment = listing_attachments(:one)
  end

  test "should get index" do
    get listing_attachments_url
    assert_response :success
  end

  test "should get new" do
    get new_listing_attachment_url
    assert_response :success
  end

  test "should create listing_attachment" do
    assert_difference('ListingAttachment.count') do
      post listing_attachments_url, params: { listing_attachment: { listing_id: @listing_attachment.listing_id, photo: @listing_attachment.photo } }
    end

    assert_redirected_to listing_attachment_url(ListingAttachment.last)
  end

  test "should show listing_attachment" do
    get listing_attachment_url(@listing_attachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_listing_attachment_url(@listing_attachment)
    assert_response :success
  end

  test "should update listing_attachment" do
    patch listing_attachment_url(@listing_attachment), params: { listing_attachment: { listing_id: @listing_attachment.listing_id, photo: @listing_attachment.photo } }
    assert_redirected_to listing_attachment_url(@listing_attachment)
  end

  test "should destroy listing_attachment" do
    assert_difference('ListingAttachment.count', -1) do
      delete listing_attachment_url(@listing_attachment)
    end

    assert_redirected_to listing_attachments_url
  end
end
