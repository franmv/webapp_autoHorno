require 'test_helper'

class QuemasControllerTest < ActionController::TestCase
  setup do
    @quema = quemas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quemas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quema" do
    assert_difference('Quema.count') do
      post :create, quema: { estado: @quema.estado }
    end

    assert_redirected_to quema_path(assigns(:quema))
  end

  test "should show quema" do
    get :show, id: @quema
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quema
    assert_response :success
  end

  test "should update quema" do
    patch :update, id: @quema, quema: { estado: @quema.estado }
    assert_redirected_to quema_path(assigns(:quema))
  end

  test "should destroy quema" do
    assert_difference('Quema.count', -1) do
      delete :destroy, id: @quema
    end

    assert_redirected_to quemas_path
  end
end
