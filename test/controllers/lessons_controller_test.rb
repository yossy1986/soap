require 'test_helper'

class LessonsControllerTest < ActionDispatch::IntegrationTest
  test "should get basic" do
    get lessons_basic_url
    assert_response :success
  end

end
