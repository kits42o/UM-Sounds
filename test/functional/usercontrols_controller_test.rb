require 'test_helper'

class UsercontrolsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Usercontrol.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Usercontrol.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Usercontrol.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to usercontrol_url(assigns(:usercontrol))
  end
  
  def test_edit
    get :edit, :id => Usercontrol.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Usercontrol.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Usercontrol.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Usercontrol.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Usercontrol.first
    assert_redirected_to usercontrol_url(assigns(:usercontrol))
  end
  
  def test_destroy
    usercontrol = Usercontrol.first
    delete :destroy, :id => usercontrol
    assert_redirected_to usercontrols_url
    assert !Usercontrol.exists?(usercontrol.id)
  end
end
