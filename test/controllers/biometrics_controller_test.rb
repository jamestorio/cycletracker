require 'test_helper'

class BiometricsControllerTest < ActionController::TestCase
  setup do
    @biometric = biometrics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:biometrics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create biometric" do
    assert_difference('Biometric.count') do
      post :create, biometric: { bmi: @biometric.bmi, date: @biometric.date, note: @biometric.note, time: @biometric.time, weight: @biometric.weight }
    end

    assert_redirected_to biometric_path(assigns(:biometric))
  end

  test "should show biometric" do
    get :show, id: @biometric
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @biometric
    assert_response :success
  end

  test "should update biometric" do
    patch :update, id: @biometric, biometric: { bmi: @biometric.bmi, date: @biometric.date, note: @biometric.note, time: @biometric.time, weight: @biometric.weight }
    assert_redirected_to biometric_path(assigns(:biometric))
  end

  test "should destroy biometric" do
    assert_difference('Biometric.count', -1) do
      delete :destroy, id: @biometric
    end

    assert_redirected_to biometrics_path
  end
end
