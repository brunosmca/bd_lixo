require 'test_helper'

class AtividadesControllerTest < ActionController::TestCase
  setup do
    @atividade = atividades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:atividades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create atividade" do
    assert_difference('Atividade.count') do
      post :create, :atividade => @atividade.attributes
    end

    assert_redirected_to atividade_path(assigns(:atividade))
  end

  test "should show atividade" do
    get :show, :id => @atividade.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @atividade.to_param
    assert_response :success
  end

  test "should update atividade" do
    put :update, :id => @atividade.to_param, :atividade => @atividade.attributes
    assert_redirected_to atividade_path(assigns(:atividade))
  end

  test "should destroy atividade" do
    assert_difference('Atividade.count', -1) do
      delete :destroy, :id => @atividade.to_param
    end

    assert_redirected_to atividades_path
  end
end
