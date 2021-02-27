require 'test_helper'

class LandingpagesControllerTest < ActionDispatch::IntegrationTest
  test "should get homepage" do
    get landingpages_homepage_url
    assert_response :success
  end

end
