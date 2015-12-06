require 'test_helper'

class DziedzinasControllerTest < ActionController::TestCase
  setup do
    @dziedzina = dziedzinas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dziedzinas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dziedzina" do
    assert_difference('Dziedzina.count') do
      post :create, dziedzina: { name: @dziedzina.name }
    end

    assert_redirected_to dziedzina_path(assigns(:dziedzina))
  end

  test "should show dziedzina" do
    get :show, id: @dziedzina
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dziedzina
    assert_response :success
  end

  test "should update dziedzina" do
    patch :update, id: @dziedzina, dziedzina: { name: @dziedzina.name }
    assert_redirected_to dziedzina_path(assigns(:dziedzina))
  end

  test "should destroy dziedzina" do
    assert_difference('Dziedzina.count', -1) do
      delete :destroy, id: @dziedzina
    end

    assert_redirected_to dziedzinas_path
  end
end
