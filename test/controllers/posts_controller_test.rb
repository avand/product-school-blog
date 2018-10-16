require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  test "should redirect to show with alert if editing post current user did not author" do
    user = User.create first_name: 'test'
    post = Post.create user_id: 2, title: 'test'
    
    get :edit, id: post.id
    
    assert_response :redirect
    assert_redirected_to post_path(post)
    assert_equal 'You can only edit your own posts', flash[:alert]
  end
end
