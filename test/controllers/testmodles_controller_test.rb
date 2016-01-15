require 'test_helper'

class TestmodlesControllerTest < ActionController::TestCase
  setup do
    @testmodle = testmodles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testmodles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testmodle" do
    assert_difference('Testmodle.count') do
      post :create, testmodle: { name: @testmodle.name, title: @testmodle.title }
    end

    assert_redirected_to testmodle_path(assigns(:testmodle))
  end

  test "should show testmodle" do
    get :show, id: @testmodle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testmodle
    assert_response :success
  end

  test "should update testmodle" do
    patch :update, id: @testmodle, testmodle: { name: @testmodle.name, title: @testmodle.title }
    assert_redirected_to testmodle_path(assigns(:testmodle))
  end

  test "should destroy testmodle" do
    assert_difference('Testmodle.count', -1) do
      delete :destroy, id: @testmodle
    end

    assert_redirected_to testmodles_path
  end
end
