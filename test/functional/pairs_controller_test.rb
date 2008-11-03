require 'test_helper'

class PairsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:pairs)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_pair
    assert_difference('Pair.count') do
      post :create, :pair => { }
    end

    assert_redirected_to pair_path(assigns(:pair))
  end

  def test_should_show_pair
    get :show, :id => pairs(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => pairs(:one).id
    assert_response :success
  end

  def test_should_update_pair
    put :update, :id => pairs(:one).id, :pair => { }
    assert_redirected_to pair_path(assigns(:pair))
  end

  def test_should_destroy_pair
    assert_difference('Pair.count', -1) do
      delete :destroy, :id => pairs(:one).id
    end

    assert_redirected_to pairs_path
  end
end
