require 'test_helper'

class FindControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get find_show_url
    assert_response :success
  end

end
