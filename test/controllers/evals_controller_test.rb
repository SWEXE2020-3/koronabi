require 'test_helper'

class EvalsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get evals_new_url
    assert_response :success
  end

  test "should get edit" do
    get evals_edit_url
    assert_response :success
  end

end
