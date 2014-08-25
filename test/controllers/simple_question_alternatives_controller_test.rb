require 'test_helper'

class SimpleQuestionAlternativesControllerTest < ActionController::TestCase
  setup do
    @simple_question_alternative = simple_question_alternatives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:simple_question_alternatives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create simple_question_alternative" do
    assert_difference('SimpleQuestionAlternative.count') do
      post :create, simple_question_alternative: { correct: @simple_question_alternative.correct, media: @simple_question_alternative.media, name: @simple_question_alternative.name, simple_question_id: @simple_question_alternative.simple_question_id }
    end

    assert_redirected_to simple_question_alternative_path(assigns(:simple_question_alternative))
  end

  test "should show simple_question_alternative" do
    get :show, id: @simple_question_alternative
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @simple_question_alternative
    assert_response :success
  end

  test "should update simple_question_alternative" do
    patch :update, id: @simple_question_alternative, simple_question_alternative: { correct: @simple_question_alternative.correct, media: @simple_question_alternative.media, name: @simple_question_alternative.name, simple_question_id: @simple_question_alternative.simple_question_id }
    assert_redirected_to simple_question_alternative_path(assigns(:simple_question_alternative))
  end

  test "should destroy simple_question_alternative" do
    assert_difference('SimpleQuestionAlternative.count', -1) do
      delete :destroy, id: @simple_question_alternative
    end

    assert_redirected_to simple_question_alternatives_path
  end
end
