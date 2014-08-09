require 'test_helper'

class SchwierigkeitsgradsControllerTest < ActionController::TestCase
  setup do
    @schwierigkeitsgrad = schwierigkeitsgrads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schwierigkeitsgrads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schwierigkeitsgrad" do
    assert_difference('Schwierigkeitsgrad.count') do
      post :create, schwierigkeitsgrad: { description: @schwierigkeitsgrad.description }
    end

    assert_redirected_to schwierigkeitsgrad_path(assigns(:schwierigkeitsgrad))
  end

  test "should show schwierigkeitsgrad" do
    get :show, id: @schwierigkeitsgrad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schwierigkeitsgrad
    assert_response :success
  end

  test "should update schwierigkeitsgrad" do
    patch :update, id: @schwierigkeitsgrad, schwierigkeitsgrad: { description: @schwierigkeitsgrad.description }
    assert_redirected_to schwierigkeitsgrad_path(assigns(:schwierigkeitsgrad))
  end

  test "should destroy schwierigkeitsgrad" do
    assert_difference('Schwierigkeitsgrad.count', -1) do
      delete :destroy, id: @schwierigkeitsgrad
    end

    assert_redirected_to schwierigkeitsgrads_path
  end
end
