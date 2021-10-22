require 'test_helper'

class DoctorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get doctors_new_url
    assert_response :success
  end

  test "should get edit" do
    get doctors_edit_url
    assert_response :success
  end

end
