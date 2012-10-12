require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get store" do
    get :store
    assert_response :success
  end

  test "should get members" do
    get :members
    assert_response :success
  end

  test "should get events" do
    get :events
    assert_response :success
  end

end
