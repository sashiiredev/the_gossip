require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get identification" do
    get welcome_identification_url
    assert_response :success
  end

end
