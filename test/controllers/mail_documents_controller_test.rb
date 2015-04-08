require 'test_helper'

class MailDocumentsControllerTest < ActionController::TestCase
  setup do
    @mail_document = mail_documents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mail_documents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mail_document" do
    assert_difference('MailDocument.count') do
      post :create, mail_document: { picture: @mail_document.picture, text: @mail_document.text, video: @mail_document.video }
    end

    assert_redirected_to mail_document_path(assigns(:mail_document))
  end

  test "should show mail_document" do
    get :show, id: @mail_document
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mail_document
    assert_response :success
  end

  test "should update mail_document" do
    patch :update, id: @mail_document, mail_document: { picture: @mail_document.picture, text: @mail_document.text, video: @mail_document.video }
    assert_redirected_to mail_document_path(assigns(:mail_document))
  end

  test "should destroy mail_document" do
    assert_difference('MailDocument.count', -1) do
      delete :destroy, id: @mail_document
    end

    assert_redirected_to mail_documents_path
  end
end
