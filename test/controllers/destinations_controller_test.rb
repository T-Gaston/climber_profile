require 'test_helper'

class DestinationsControllerTest < ActionDispatch::IntegrationTest
  test "should get inde" do
    get destinations_inde_url
    assert_response :success
  end

  test "should get show" do
    get destinations_show_url
    assert_response :success
  end

  test "should get new" do
    get destinations_new_url
    assert_response :success
  end

  test "should get edit" do
    get destinations_edit_url
    assert_response :success
  end

end
