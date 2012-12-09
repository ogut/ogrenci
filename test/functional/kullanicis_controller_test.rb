require 'test_helper'

class KullanicisControllerTest < ActionController::TestCase
  setup do
    @kullanici = kullanicis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kullanicis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kullanici" do
    assert_difference('Kullanici.count') do
      post :create, kullanici: { ad: @kullanici.ad, adres: @kullanici.adres, email: @kullanici.email, soyad: @kullanici.soyad }
    end

    assert_redirected_to kullanici_path(assigns(:kullanici))
  end

  test "should show kullanici" do
    get :show, id: @kullanici
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kullanici
    assert_response :success
  end

  test "should update kullanici" do
    put :update, id: @kullanici, kullanici: { ad: @kullanici.ad, adres: @kullanici.adres, email: @kullanici.email, soyad: @kullanici.soyad }
    assert_redirected_to kullanici_path(assigns(:kullanici))
  end

  test "should destroy kullanici" do
    assert_difference('Kullanici.count', -1) do
      delete :destroy, id: @kullanici
    end

    assert_redirected_to kullanicis_path
  end
end
