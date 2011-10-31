require 'test_helper'

class FoodItemMenusControllerTest < ActionController::TestCase
  setup do
    @food_item_menu = food_item_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_item_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_item_menu" do
    assert_difference('FoodItemMenu.count') do
      post :create, food_item_menu: @food_item_menu.attributes
    end

    assert_redirected_to food_item_menu_path(assigns(:food_item_menu))
  end

  test "should show food_item_menu" do
    get :show, id: @food_item_menu.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_item_menu.to_param
    assert_response :success
  end

  test "should update food_item_menu" do
    put :update, id: @food_item_menu.to_param, food_item_menu: @food_item_menu.attributes
    assert_redirected_to food_item_menu_path(assigns(:food_item_menu))
  end

  test "should destroy food_item_menu" do
    assert_difference('FoodItemMenu.count', -1) do
      delete :destroy, id: @food_item_menu.to_param
    end

    assert_redirected_to food_item_menus_path
  end
end
