require 'test_helper'

class UserprofilesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Userprofile.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Userprofile.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Userprofile.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to userprofile_url(assigns(:userprofile))
  end
  
  def test_edit
    get :edit, :id => Userprofile.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Userprofile.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Userprofile.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Userprofile.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Userprofile.first
    assert_redirected_to userprofile_url(assigns(:userprofile))
  end
  
  def test_destroy
    userprofile = Userprofile.first
    delete :destroy, :id => userprofile
    assert_redirected_to userprofiles_url
    assert !Userprofile.exists?(userprofile.id)
  end
end
