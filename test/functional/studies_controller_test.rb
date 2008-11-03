require 'test_helper'

class StudiesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:studies)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_study
    assert_difference('Study.count') do
      post :create, :study => { }
    end

    assert_redirected_to study_path(assigns(:study))
  end

  def test_should_show_study
    get :show, :id => studies(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => studies(:one).id
    assert_response :success
  end

  def test_should_update_study
    put :update, :id => studies(:one).id, :study => { }
    assert_redirected_to study_path(assigns(:study))
  end

  def test_should_destroy_study
    assert_difference('Study.count', -1) do
      delete :destroy, :id => studies(:one).id
    end

    assert_redirected_to studies_path
  end
end
