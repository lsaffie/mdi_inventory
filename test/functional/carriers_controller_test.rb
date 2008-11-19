require 'test_helper'

class CarriersControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:carriers)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_carrier
    assert_difference('Carrier.count') do
      post :create, :carrier => { }
    end

    assert_redirected_to carrier_path(assigns(:carrier))
  end

  def test_should_show_carrier
    get :show, :id => carriers(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => carriers(:one).id
    assert_response :success
  end

  def test_should_update_carrier
    put :update, :id => carriers(:one).id, :carrier => { }
    assert_redirected_to carrier_path(assigns(:carrier))
  end

  def test_should_destroy_carrier
    assert_difference('Carrier.count', -1) do
      delete :destroy, :id => carriers(:one).id
    end

    assert_redirected_to carriers_path
  end
end
