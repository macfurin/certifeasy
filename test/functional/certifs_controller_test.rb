require 'test_helper'

class CertifsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Certif.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Certif.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Certif.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to certif_url(assigns(:certif))
  end

  def test_edit
    get :edit, :id => Certif.first
    assert_template 'edit'
  end

  def test_update_invalid
    Certif.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Certif.first
    assert_template 'edit'
  end

  def test_update_valid
    Certif.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Certif.first
    assert_redirected_to certif_url(assigns(:certif))
  end

  def test_destroy
    certif = Certif.first
    delete :destroy, :id => certif
    assert_redirected_to certifs_url
    assert !Certif.exists?(certif.id)
  end
end
