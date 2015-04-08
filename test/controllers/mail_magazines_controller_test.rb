require 'test_helper'

class MailMagazinesControllerTest < ActionController::TestCase
  setup do
    @mail_magazine = mail_magazines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mail_magazines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mail_magazine" do
    assert_difference('MailMagazine.count') do
      post :create, mail_magazine: { title: @mail_magazine.title }
    end

    assert_redirected_to mail_magazine_path(assigns(:mail_magazine))
  end

  test "should show mail_magazine" do
    get :show, id: @mail_magazine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mail_magazine
    assert_response :success
  end

  test "should update mail_magazine" do
    patch :update, id: @mail_magazine, mail_magazine: { title: @mail_magazine.title }
    assert_redirected_to mail_magazine_path(assigns(:mail_magazine))
  end

  test "should destroy mail_magazine" do
    assert_difference('MailMagazine.count', -1) do
      delete :destroy, id: @mail_magazine
    end

    assert_redirected_to mail_magazines_path
  end
end
