require 'test_helper'

class PurchasersControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:purchasers)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_purchaser
    assert_difference('Purchaser.count') do
      post :create, :purchaser => { }
    end

    assert_redirected_to purchaser_path(assigns(:purchaser))
  end

  def test_should_show_purchaser
    get :show, :id => purchasers(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => purchasers(:one).id
    assert_response :success
  end

  def test_should_update_purchaser
    put :update, :id => purchasers(:one).id, :purchaser => { }
    assert_redirected_to purchaser_path(assigns(:purchaser))
  end

  def test_should_destroy_purchaser
    assert_difference('Purchaser.count', -1) do
      delete :destroy, :id => purchasers(:one).id
    end

    assert_redirected_to purchasers_path
  end
end
