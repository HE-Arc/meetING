require 'test_helper'

class NewPostsControllerTest < ActionController::TestCase
  setup do
    @new_post = new_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_post" do
    assert_difference('NewPost.count') do
      post :create, new_post: {  }
    end

    assert_redirected_to new_post_path(assigns(:new_post))
  end

  test "should show new_post" do
    get :show, id: @new_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_post
    assert_response :success
  end

  test "should update new_post" do
    patch :update, id: @new_post, new_post: {  }
    assert_redirected_to new_post_path(assigns(:new_post))
  end

  test "should destroy new_post" do
    assert_difference('NewPost.count', -1) do
      delete :destroy, id: @new_post
    end

    assert_redirected_to new_posts_path
  end
end
