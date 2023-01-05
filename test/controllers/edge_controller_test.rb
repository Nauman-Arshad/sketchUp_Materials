require "test_helper"

class EdgeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get edge_index_url
    assert_response :success
  end
end
