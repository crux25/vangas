require 'test_helper'

class ActivateControllerTest < ActionController::TestCase
  test "should get activated" do
    get :activated
    assert_response :success
  end

end
