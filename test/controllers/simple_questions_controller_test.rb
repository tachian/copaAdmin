require 'test_helper'

class SimpleQuestionsControllerTest < ActionController::TestCase
  setup do
    @simple_question = simple_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:simple_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create simple_question" do
    assert_difference('SimpleQuestion.count') do
      post :create, simple_question: { media: @simple_question.media, name: @simple_question.name }
    end

    assert_redirected_to simple_question_path(assigns(:simple_question))
  end

  test "should show simple_question" do
    get :show, id: @simple_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @simple_question
    assert_response :success
  end

  test "should update simple_question" do
    patch :update, id: @simple_question, simple_question: { media: @simple_question.media, name: @simple_question.name }
    assert_redirected_to simple_question_path(assigns(:simple_question))
  end

  test "should destroy simple_question" do
    assert_difference('SimpleQuestion.count', -1) do
      delete :destroy, id: @simple_question
    end

    assert_redirected_to simple_questions_path
  end
end
