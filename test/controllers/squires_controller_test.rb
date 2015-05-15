require 'test_helper'

class SquiresControllerTest < ActionController::TestCase
  setup do
    @squire = squires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:squires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create squire" do
    assert_difference('Squire.count') do
      post :create, squire: { description: @squire.description, title: @squire.title }
    end

    assert_redirected_to squire_path(assigns(:squire))
  end

  test "should show squire" do
    get :show, id: @squire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @squire
    assert_response :success
  end

  test "should update squire" do
    patch :update, id: @squire, squire: { description: @squire.description, title: @squire.title }
    assert_redirected_to squire_path(assigns(:squire))
  end

  test "should destroy squire" do
    assert_difference('Squire.count', -1) do
      delete :destroy, id: @squire
    end

    assert_redirected_to squires_path
  end
end
