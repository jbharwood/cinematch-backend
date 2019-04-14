require 'test_helper'

class FeedUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feed_user = feed_users(:one)
  end

  test "should get index" do
    get feed_users_url, as: :json
    assert_response :success
  end

  test "should create feed_user" do
    assert_difference('FeedUser.count') do
      post feed_users_url, params: { feed_user: { feed_id: @feed_user.feed_id, user_id: @feed_user.user_id, username: @feed_user.username } }, as: :json
    end

    assert_response 201
  end

  test "should show feed_user" do
    get feed_user_url(@feed_user), as: :json
    assert_response :success
  end

  test "should update feed_user" do
    patch feed_user_url(@feed_user), params: { feed_user: { feed_id: @feed_user.feed_id, user_id: @feed_user.user_id, username: @feed_user.username } }, as: :json
    assert_response 200
  end

  test "should destroy feed_user" do
    assert_difference('FeedUser.count', -1) do
      delete feed_user_url(@feed_user), as: :json
    end

    assert_response 204
  end
end
