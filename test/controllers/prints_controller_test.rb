require 'test_helper'

class PetsControllerTest < ActionController::TestCase
  setup do
    @print = prints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create print" do
    assert_difference('Print.count') do
      post :create, print: { attachment: @print.attachment, name: @print.name, materiau: @print.materiau, qualite: @print.qualite, livraison: @print.livraison }
    end

    assert_redirected_to print_path(assigns(:print))
  end

  test "should show print" do
    get :show, id: @print
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @print
    assert_response :success
  end

  test "should update print" do
    patch :update, id: @print, print: { attachment: @print.attachment, name: @print.name, materiau: @print.materiau, qualite: @print.qualite, livraison: @print.livraison  }
    assert_redirected_to print_path(assigns(:print))
  end

  test "should destroy print" do
    assert_difference('Print.count', -1) do
      delete :destroy, id: @print
    end

    assert_redirected_to prints_path
  end
end
