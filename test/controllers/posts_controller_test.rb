require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:valid)
    @invalid_post = posts(:invalid)
  end

  test "should get index" do
    get posts_url, as: :json
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { description: @post.description, title: @post.title }, as: :json
    end

    assert_response 201
  end

  test "slould not create post with invalid data" do
    assert_no_changes('Post.count') do
      post posts_url, params: { description: @invalid_post.description, title: @invalid_post.title }, as: :json
    end

    assert_response 422
  end

  test "should show post" do
    get posts_url(@post), as: :json
    assert_response :success
  end

end
