require 'test_helper'

class RecentsControllerTest < ActionController::TestCase
  setup do
    @recent = recents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recent" do
    assert_difference('Recent.count') do
      post :create, recent: { Date: @recent.Date, average: @recent.average, distance: @recent.distance, fastest: @recent.fastest, notes: @recent.notes, ride: @recent.ride, ride: @recent.ride, route: @recent.route, speed: @recent.speed, speed: @recent.speed, time: @recent.time }
    end

    assert_redirected_to recent_path(assigns(:recent))
  end

  test "should show recent" do
    get :show, id: @recent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recent
    assert_response :success
  end

  test "should update recent" do
    patch :update, id: @recent, recent: { Date: @recent.Date, average: @recent.average, distance: @recent.distance, fastest: @recent.fastest, notes: @recent.notes, ride: @recent.ride, ride: @recent.ride, route: @recent.route, speed: @recent.speed, speed: @recent.speed, time: @recent.time }
    assert_redirected_to recent_path(assigns(:recent))
  end

  test "should destroy recent" do
    assert_difference('Recent.count', -1) do
      delete :destroy, id: @recent
    end

    assert_redirected_to recents_path
  end
end
