require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get hayloft" do
    get :hayloft
    assert_response :success
  end

  test "should get merchandise" do
    get :merchandise
    assert_response :success
  end

  test "should get entertainment" do
    get :entertainment
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
