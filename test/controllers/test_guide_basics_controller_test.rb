require 'test_helper'

class TestGuideBasicsControllerTest < ActionController::TestCase
  setup do
    @test_guide_basic = test_guide_basics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_guide_basics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_guide_basic" do
    assert_difference('TestGuideBasic.count') do
      post :create, test_guide_basic: { group_question_references: @test_guide_basic.group_question_references, message: @test_guide_basic.message, name: @test_guide_basic.name, order: @test_guide_basic.order, simple_question_id: @test_guide_basic.simple_question_id, test_id: @test_guide_basic.test_id, test_type_id: @test_guide_basic.test_type_id }
    end

    assert_redirected_to test_guide_basic_path(assigns(:test_guide_basic))
  end

  test "should show test_guide_basic" do
    get :show, id: @test_guide_basic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_guide_basic
    assert_response :success
  end

  test "should update test_guide_basic" do
    patch :update, id: @test_guide_basic, test_guide_basic: { group_question_references: @test_guide_basic.group_question_references, message: @test_guide_basic.message, name: @test_guide_basic.name, order: @test_guide_basic.order, simple_question_id: @test_guide_basic.simple_question_id, test_id: @test_guide_basic.test_id, test_type_id: @test_guide_basic.test_type_id }
    assert_redirected_to test_guide_basic_path(assigns(:test_guide_basic))
  end

  test "should destroy test_guide_basic" do
    assert_difference('TestGuideBasic.count', -1) do
      delete :destroy, id: @test_guide_basic
    end

    assert_redirected_to test_guide_basics_path
  end
end
