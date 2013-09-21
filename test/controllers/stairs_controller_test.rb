require 'test_helper'

class StairsControllerTest < ActionController::TestCase
  setup do
    @stair = stairs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stairs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stair" do
    assert_difference('Stair.count') do
      post :create, stair: { Date: @stair.Date, duration: @stair.duration }
    end

    assert_redirected_to stair_path(assigns(:stair))
  end

  test "should show stair" do
    get :show, id: @stair
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stair
    assert_response :success
  end

  test "should update stair" do
    patch :update, id: @stair, stair: { Date: @stair.Date, duration: @stair.duration }
    assert_redirected_to stair_path(assigns(:stair))
  end

  test "should destroy stair" do
    assert_difference('Stair.count', -1) do
      delete :destroy, id: @stair
    end

    assert_redirected_to stairs_path
  end
end
