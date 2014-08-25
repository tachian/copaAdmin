require 'test_helper'

class GroupQuestionStatementsControllerTest < ActionController::TestCase
  setup do
    @group_question_statement = group_question_statements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_question_statements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_question_statement" do
    assert_difference('GroupQuestionStatement.count') do
      post :create, group_question_statement: { group_question_id: @group_question_statement.group_question_id, name: @group_question_statement.name }
    end

    assert_redirected_to group_question_statement_path(assigns(:group_question_statement))
  end

  test "should show group_question_statement" do
    get :show, id: @group_question_statement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_question_statement
    assert_response :success
  end

  test "should update group_question_statement" do
    patch :update, id: @group_question_statement, group_question_statement: { group_question_id: @group_question_statement.group_question_id, name: @group_question_statement.name }
    assert_redirected_to group_question_statement_path(assigns(:group_question_statement))
  end

  test "should destroy group_question_statement" do
    assert_difference('GroupQuestionStatement.count', -1) do
      delete :destroy, id: @group_question_statement
    end

    assert_redirected_to group_question_statements_path
  end
end
