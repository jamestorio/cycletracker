require 'test_helper'

class WeightTrainingsControllerTest < ActionController::TestCase
  setup do
    @weight_training = weight_trainings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weight_trainings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weight_training" do
    assert_difference('WeightTraining.count') do
      post :create, weight_training: { bench_press: @weight_training.bench_press, curl: @weight_training.curl, date: @weight_training.date, lat_pulldown: @weight_training.lat_pulldown, leg_extension: @weight_training.leg_extension, peck_fly: @weight_training.peck_fly, push_up: @weight_training.push_up, seated_row: @weight_training.seated_row, should_press: @weight_training.should_press, sit_up: @weight_training.sit_up, squat: @weight_training.squat, toe_raise: @weight_training.toe_raise, tricep_exstension: @weight_training.tricep_exstension }
    end

    assert_redirected_to weight_training_path(assigns(:weight_training))
  end

  test "should show weight_training" do
    get :show, id: @weight_training
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weight_training
    assert_response :success
  end

  test "should update weight_training" do
    patch :update, id: @weight_training, weight_training: { bench_press: @weight_training.bench_press, curl: @weight_training.curl, date: @weight_training.date, lat_pulldown: @weight_training.lat_pulldown, leg_extension: @weight_training.leg_extension, peck_fly: @weight_training.peck_fly, push_up: @weight_training.push_up, seated_row: @weight_training.seated_row, should_press: @weight_training.should_press, sit_up: @weight_training.sit_up, squat: @weight_training.squat, toe_raise: @weight_training.toe_raise, tricep_exstension: @weight_training.tricep_exstension }
    assert_redirected_to weight_training_path(assigns(:weight_training))
  end

  test "should destroy weight_training" do
    assert_difference('WeightTraining.count', -1) do
      delete :destroy, id: @weight_training
    end

    assert_redirected_to weight_trainings_path
  end
end
