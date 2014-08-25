require 'test_helper'

class TestGuideScenarioApsControllerTest < ActionController::TestCase
  setup do
    @test_guide_scenario_ap = test_guide_scenario_aps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_guide_scenario_aps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_guide_scenario_ap" do
    assert_difference('TestGuideScenarioAp.count') do
      post :create, test_guide_scenario_ap: { group_question_id: @test_guide_scenario_ap.group_question_id, simple_question_id: @test_guide_scenario_ap.simple_question_id, statement: @test_guide_scenario_ap.statement, test_guide_scenario_id: @test_guide_scenario_ap.test_guide_scenario_id }
    end

    assert_redirected_to test_guide_scenario_ap_path(assigns(:test_guide_scenario_ap))
  end

  test "should show test_guide_scenario_ap" do
    get :show, id: @test_guide_scenario_ap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_guide_scenario_ap
    assert_response :success
  end

  test "should update test_guide_scenario_ap" do
    patch :update, id: @test_guide_scenario_ap, test_guide_scenario_ap: { group_question_id: @test_guide_scenario_ap.group_question_id, simple_question_id: @test_guide_scenario_ap.simple_question_id, statement: @test_guide_scenario_ap.statement, test_guide_scenario_id: @test_guide_scenario_ap.test_guide_scenario_id }
    assert_redirected_to test_guide_scenario_ap_path(assigns(:test_guide_scenario_ap))
  end

  test "should destroy test_guide_scenario_ap" do
    assert_difference('TestGuideScenarioAp.count', -1) do
      delete :destroy, id: @test_guide_scenario_ap
    end

    assert_redirected_to test_guide_scenario_aps_path
  end
end
