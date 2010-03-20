require 'test_helper'

class StudiosControllerTest < ActionController::TestCase
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Studio.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Studio.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to root_url
  end
  
  def test_edit
    get :edit, :id => Studio.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Studio.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Studio.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Studio.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Studio.first
    assert_redirected_to root_url
  end
  
  def test_destroy
    studio = Studio.first
    delete :destroy, :id => studio
    assert_redirected_to root_url
    assert !Studio.exists?(studio.id)
  end
end
