require "test_helper"

class CreditControllerTest < ActionDispatch::IntegrationTest
  test "should get Credits_page" do
    get credit_Credits_page_url
    assert_response :success
  end
end
