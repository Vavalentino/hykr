require 'test_helper'

class WanderungensControllerTest < ActionController::TestCase
  setup do
    @wanderungen = wanderungens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wanderungens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wanderungen" do
    assert_difference('Wanderungen.count') do
      post :create, wanderungen: { description: @wanderungen.description }
    end

    assert_redirected_to wanderungen_path(assigns(:wanderungen))
  end

  test "should show wanderungen" do
    get :show, id: @wanderungen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wanderungen
    assert_response :success
  end

  test "should update wanderungen" do
    patch :update, id: @wanderungen, wanderungen: { description: @wanderungen.description }
    assert_redirected_to wanderungen_path(assigns(:wanderungen))
  end

  test "should destroy wanderungen" do
    assert_difference('Wanderungen.count', -1) do
      delete :destroy, id: @wanderungen
    end

    assert_redirected_to wanderungens_path
  end
end
