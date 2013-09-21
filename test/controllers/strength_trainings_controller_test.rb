require 'test_helper'

class StrengthTrainingsControllerTest < ActionController::TestCase
  setup do
    @strength_training = strength_trainings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:strength_trainings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create strength_training" do
    assert_difference('StrengthTraining.count') do
      post :create, strength_training: { bench_press: @strength_training.bench_press, curl: @strength_training.curl, date: @strength_training.date, lat_pulldown: @strength_training.lat_pulldown, leg_extension: @strength_training.leg_extension, peck_fly: @strength_training.peck_fly, push_up: @strength_training.push_up, seated_row: @strength_training.seated_row, should_press: @strength_training.should_press, sit_up: @strength_training.sit_up, squat: @strength_training.squat, toe_raise: @strength_training.toe_raise, tricep_exstension: @strength_training.tricep_exstension }
    end

    assert_redirected_to strength_training_path(assigns(:strength_training))
  end

  test "should show strength_training" do
    get :show, id: @strength_training
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @strength_training
    assert_response :success
  end

  test "should update strength_training" do
    patch :update, id: @strength_training, strength_training: { bench_press: @strength_training.bench_press, curl: @strength_training.curl, date: @strength_training.date, lat_pulldown: @strength_training.lat_pulldown, leg_extension: @strength_training.leg_extension, peck_fly: @strength_training.peck_fly, push_up: @strength_training.push_up, seated_row: @strength_training.seated_row, should_press: @strength_training.should_press, sit_up: @strength_training.sit_up, squat: @strength_training.squat, toe_raise: @strength_training.toe_raise, tricep_exstension: @strength_training.tricep_exstension }
    assert_redirected_to strength_training_path(assigns(:strength_training))
  end

  test "should destroy strength_training" do
    assert_difference('StrengthTraining.count', -1) do
      delete :destroy, id: @strength_training
    end

    assert_redirected_to strength_trainings_path
  end
end
