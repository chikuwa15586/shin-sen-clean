require "test_helper"

class OmikujiControllerTest < ActionDispatch::IntegrationTest
  test "should get draw" do
    get omikuji_draw_url
    assert_response :success
  end

  test "should get result" do
    get omikuji_result_url
    assert_response :success
  end
end
