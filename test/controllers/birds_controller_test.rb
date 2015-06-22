require 'test_helper'

class BirdsControllerTest < ActionController::TestCase
  setup do
    @bird = birds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:birds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bird" do
    assert_difference('Bird.count') do
      post :create, bird: { common_name: @bird.common_name }
    end

    assert_redirected_to bird_path(assigns(:bird))
  end

  test "should show bird" do
    get :show, id: @bird
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bird
    assert_response :success
  end

  test "should update bird" do
    patch :update, id: @bird, bird: { common_name: @bird.common_name }
    assert_redirected_to bird_path(assigns(:bird))
  end

  test "should destroy bird" do
    assert_difference('Bird.count', -1) do
      delete :destroy, id: @bird
    end

    assert_redirected_to birds_path
  end
end
