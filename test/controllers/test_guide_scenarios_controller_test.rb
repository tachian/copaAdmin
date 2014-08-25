require 'test_helper'

class TestGuideScenariosControllerTest < ActionController::TestCase
  setup do
    @test_guide_scenario = test_guide_scenarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_guide_scenarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_guide_scenario" do
    assert_difference('TestGuideScenario.count') do
      post :create, test_guide_scenario: { media: @test_guide_scenario.media, name: @test_guide_scenario.name, test_guide_analysis_id: @test_guide_scenario.test_guide_analysis_id }
    end

    assert_redirected_to test_guide_scenario_path(assigns(:test_guide_scenario))
  end

  test "should show test_guide_scenario" do
    get :show, id: @test_guide_scenario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_guide_scenario
    assert_response :success
  end

  test "should update test_guide_scenario" do
    patch :update, id: @test_guide_scenario, test_guide_scenario: { media: @test_guide_scenario.media, name: @test_guide_scenario.name, test_guide_analysis_id: @test_guide_scenario.test_guide_analysis_id }
    assert_redirected_to test_guide_scenario_path(assigns(:test_guide_scenario))
  end

  test "should destroy test_guide_scenario" do
    assert_difference('TestGuideScenario.count', -1) do
      delete :destroy, id: @test_guide_scenario
    end

    assert_redirected_to test_guide_scenarios_path
  end
end
