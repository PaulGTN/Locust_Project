require 'test_helper'

class GigControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get gig_show_url
    assert_response :success
  end

  test "should get new" do
    get gig_new_url
    assert_response :success
  end

  test "should get edit" do
    get gig_edit_url
    assert_response :success
  end

end
