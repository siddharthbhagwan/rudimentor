require 'test_helper'

class RudimentsControllerTest < ActionController::TestCase
  setup do
    @rudiment = rudiments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rudiments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rudiment" do
    assert_difference('Rudiment.count') do
      post :create, rudiment: { name: @rudiment.name, number: @rudiment.number, sheet: @rudiment.sheet, yt: @rudiment.yt }
    end

    assert_redirected_to rudiment_path(assigns(:rudiment))
  end

  test "should show rudiment" do
    get :show, id: @rudiment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rudiment
    assert_response :success
  end

  test "should update rudiment" do
    patch :update, id: @rudiment, rudiment: { name: @rudiment.name, number: @rudiment.number, sheet: @rudiment.sheet, yt: @rudiment.yt }
    assert_redirected_to rudiment_path(assigns(:rudiment))
  end

  test "should destroy rudiment" do
    assert_difference('Rudiment.count', -1) do
      delete :destroy, id: @rudiment
    end

    assert_redirected_to rudiments_path
  end
end
