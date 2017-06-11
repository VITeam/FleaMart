require 'test_helper'

class ConversationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conversations_index_url
    assert_response :success
  end

  test "should get get_mailbox" do
    get conversations_get_mailbox_url
    assert_response :success
  end

end
