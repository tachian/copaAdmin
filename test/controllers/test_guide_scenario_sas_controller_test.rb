require 'test_helper'

class TestGuideScenarioSasControllerTest < ActionController::TestCase
  setup do
    @test_guide_scenario_sa = test_guide_scenario_sas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_guide_scenario_sas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_guide_scenario_sa" do
    assert_difference('TestGuideScenarioSa.count') do
      post :create, test_guide_scenario_sa: { group_question_id: @test_guide_scenario_sa.group_question_id, simple_question_id: @test_guide_scenario_sa.simple_question_id, statement: @test_guide_scenario_sa.statement, test_guide_scenario_id: @test_guide_scenario_sa.test_guide_scenario_id }
    end

    assert_redirected_to test_guide_scenario_sa_path(assigns(:test_guide_scenario_sa))
  end

  test "should show test_guide_scenario_sa" do
    get :show, id: @test_guide_scenario_sa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_guide_scenario_sa
    assert_response :success
  end

  test "should update test_guide_scenario_sa" do
    patch :update, id: @test_guide_scenario_sa, test_guide_scenario_sa: { group_question_id: @test_guide_scenario_sa.group_question_id, simple_question_id: @test_guide_scenario_sa.simple_question_id, statement: @test_guide_scenario_sa.statement, test_guide_scenario_id: @test_guide_scenario_sa.test_guide_scenario_id }
    assert_redirected_to test_guide_scenario_sa_path(assigns(:test_guide_scenario_sa))
  end

  test "should destroy test_guide_scenario_sa" do
    assert_difference('TestGuideScenarioSa.count', -1) do
      delete :destroy, id: @test_guide_scenario_sa
    end

    assert_redirected_to test_guide_scenario_sas_path
  end
end
