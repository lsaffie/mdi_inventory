require 'test_helper'

class MakersControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:makers)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_maker
    assert_difference('Maker.count') do
      post :create, :maker => { }
    end

    assert_redirected_to maker_path(assigns(:maker))
  end

  def test_should_show_maker
    get :show, :id => makers(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => makers(:one).id
    assert_response :success
  end

  def test_should_update_maker
    put :update, :id => makers(:one).id, :maker => { }
    assert_redirected_to maker_path(assigns(:maker))
  end

  def test_should_destroy_maker
    assert_difference('Maker.count', -1) do
      delete :destroy, :id => makers(:one).id
    end

    assert_redirected_to makers_path
  end
end
