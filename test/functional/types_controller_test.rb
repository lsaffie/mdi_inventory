require 'test_helper'

class TypesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:types)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_type
    assert_difference('Type.count') do
      post :create, :type => { }
    end

    assert_redirected_to type_path(assigns(:type))
  end

  def test_should_show_type
    get :show, :id => types(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => types(:one).id
    assert_response :success
  end

  def test_should_update_type
    put :update, :id => types(:one).id, :type => { }
    assert_redirected_to type_path(assigns(:type))
  end

  def test_should_destroy_type
    assert_difference('Type.count', -1) do
      delete :destroy, :id => types(:one).id
    end

    assert_redirected_to types_path
  end
end
