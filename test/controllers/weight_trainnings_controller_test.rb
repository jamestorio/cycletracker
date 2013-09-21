require 'test_helper'

class WeightTrainningsControllerTest < ActionController::TestCase
  setup do
    @weight_trainning = weight_trainnings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weight_trainnings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weight_trainning" do
    assert_difference('WeightTrainning.count') do
      post :create, weight_trainning: { bench_press: @weight_trainning.bench_press, curl: @weight_trainning.curl, lat_pulldown: @weight_trainning.lat_pulldown, leg_extension: @weight_trainning.leg_extension, peck_fly: @weight_trainning.peck_fly, pushup: @weight_trainning.pushup, seated_row: @weight_trainning.seated_row, shoulder_press: @weight_trainning.shoulder_press, situp: @weight_trainning.situp, squat: @weight_trainning.squat, toe_raise: @weight_trainning.toe_raise, tricep_extension: @weight_trainning.tricep_extension }
    end

    assert_redirected_to weight_trainning_path(assigns(:weight_trainning))
  end

  test "should show weight_trainning" do
    get :show, id: @weight_trainning
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weight_trainning
    assert_response :success
  end

  test "should update weight_trainning" do
    patch :update, id: @weight_trainning, weight_trainning: { bench_press: @weight_trainning.bench_press, curl: @weight_trainning.curl, lat_pulldown: @weight_trainning.lat_pulldown, leg_extension: @weight_trainning.leg_extension, peck_fly: @weight_trainning.peck_fly, pushup: @weight_trainning.pushup, seated_row: @weight_trainning.seated_row, shoulder_press: @weight_trainning.shoulder_press, situp: @weight_trainning.situp, squat: @weight_trainning.squat, toe_raise: @weight_trainning.toe_raise, tricep_extension: @weight_trainning.tricep_extension }
    assert_redirected_to weight_trainning_path(assigns(:weight_trainning))
  end

  test "should destroy weight_trainning" do
    assert_difference('WeightTrainning.count', -1) do
      delete :destroy, id: @weight_trainning
    end

    assert_redirected_to weight_trainnings_path
  end
end
