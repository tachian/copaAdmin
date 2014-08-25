require 'test_helper'

class GroupQuestionAlternativesControllerTest < ActionController::TestCase
  setup do
    @group_question_alternative = group_question_alternatives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_question_alternatives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_question_alternative" do
    assert_difference('GroupQuestionAlternative.count') do
      post :create, group_question_alternative: { correct: @group_question_alternative.correct, group_question_statement_id: @group_question_alternative.group_question_statement_id, name: @group_question_alternative.name }
    end

    assert_redirected_to group_question_alternative_path(assigns(:group_question_alternative))
  end

  test "should show group_question_alternative" do
    get :show, id: @group_question_alternative
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_question_alternative
    assert_response :success
  end

  test "should update group_question_alternative" do
    patch :update, id: @group_question_alternative, group_question_alternative: { correct: @group_question_alternative.correct, group_question_statement_id: @group_question_alternative.group_question_statement_id, name: @group_question_alternative.name }
    assert_redirected_to group_question_alternative_path(assigns(:group_question_alternative))
  end

  test "should destroy group_question_alternative" do
    assert_difference('GroupQuestionAlternative.count', -1) do
      delete :destroy, id: @group_question_alternative
    end

    assert_redirected_to group_question_alternatives_path
  end
end
