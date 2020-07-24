require 'test_helper'

class LiteraturesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get literatures_show_url
    assert_response :success
  end

end
