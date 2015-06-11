require 'test_helper'

class usersControllerTest < ActionController::TestCase
  setup do
    @use = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create use" do
    assert_difference('Use.count') do
      post :create, use: { password: @use.password, username: @use.username }
    end

    assert_redirected_to use_path(assigns(:use))
  end

  test "should show use" do
    get :show, id: @use
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @use
    assert_response :success
  end

  test "should update use" do
    patch :update, id: @use, use: { password: @use.password, username: @use.username }
    assert_redirected_to use_path(assigns(:use))
  end

  test "should destroy use" do
    assert_difference('Use.count', -1) do
      delete :destroy, id: @use
    end

    assert_redirected_to users_path
  end
end
