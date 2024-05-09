require "test_helper"

class NoasControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get noas_top_url
    assert_response :success
  end

  test "should get new" do
    get noas_new_url
    assert_response :success
  end

  test "should get index" do
    get noas_index_url
    assert_response :success
  end

  test "should get show" do
    get noas_show_url
    assert_response :success
  end
end
