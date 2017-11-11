require 'test_helper'

class FeedbackCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feedback_comment = feedback_comments(:one)
  end

  test "should get index" do
    get feedback_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_feedback_comment_url
    assert_response :success
  end

  test "should create feedback_comment" do
    assert_difference('FeedbackComment.count') do
      post feedback_comments_url, params: { feedback_comment: { Employee_id: @feedback_comment.Employee_id, feedback_description: @feedback_comment.feedback_description, feedback_type: @feedback_comment.feedback_type, regarding_field: @feedback_comment.regarding_field } }
    end

    assert_redirected_to feedback_comment_url(FeedbackComment.last)
  end

  test "should show feedback_comment" do
    get feedback_comment_url(@feedback_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_feedback_comment_url(@feedback_comment)
    assert_response :success
  end

  test "should update feedback_comment" do
    patch feedback_comment_url(@feedback_comment), params: { feedback_comment: { Employee_id: @feedback_comment.Employee_id, feedback_description: @feedback_comment.feedback_description, feedback_type: @feedback_comment.feedback_type, regarding_field: @feedback_comment.regarding_field } }
    assert_redirected_to feedback_comment_url(@feedback_comment)
  end

  test "should destroy feedback_comment" do
    assert_difference('FeedbackComment.count', -1) do
      delete feedback_comment_url(@feedback_comment)
    end

    assert_redirected_to feedback_comments_url
  end
end
