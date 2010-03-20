require 'test_helper'

class SitesettingsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Sitesetting.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Sitesetting.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Sitesetting.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to sitesetting_url(assigns(:sitesetting))
  end
  
  def test_edit
    get :edit, :id => Sitesetting.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Sitesetting.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Sitesetting.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Sitesetting.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Sitesetting.first
    assert_redirected_to sitesetting_url(assigns(:sitesetting))
  end
  
  def test_destroy
    sitesetting = Sitesetting.first
    delete :destroy, :id => sitesetting
    assert_redirected_to sitesettings_url
    assert !Sitesetting.exists?(sitesetting.id)
  end
end
