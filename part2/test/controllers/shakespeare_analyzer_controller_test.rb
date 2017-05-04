require 'test_helper'

class ShakespeareAnalyzerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get shakespeare_analyzer_new_url
    assert_response :success
  end

  test "should get create" do
    get shakespeare_analyzer_create_url
    assert_response :success
  end

  test "should get show" do
    get shakespeare_analyzer_show_url
    assert_response :success
  end

end
