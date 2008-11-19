require 'test_helper'

class RatePlansControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:rate_plans)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_rate_plan
    assert_difference('RatePlan.count') do
      post :create, :rate_plan => { }
    end

    assert_redirected_to rate_plan_path(assigns(:rate_plan))
  end

  def test_should_show_rate_plan
    get :show, :id => rate_plans(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => rate_plans(:one).id
    assert_response :success
  end

  def test_should_update_rate_plan
    put :update, :id => rate_plans(:one).id, :rate_plan => { }
    assert_redirected_to rate_plan_path(assigns(:rate_plan))
  end

  def test_should_destroy_rate_plan
    assert_difference('RatePlan.count', -1) do
      delete :destroy, :id => rate_plans(:one).id
    end

    assert_redirected_to rate_plans_path
  end
end
