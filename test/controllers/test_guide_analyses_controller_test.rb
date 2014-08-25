require 'test_helper'

class TestGuideAnalysesControllerTest < ActionController::TestCase
  setup do
    @test_guide_analysis = test_guide_analyses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_guide_analyses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_guide_analysis" do
    assert_difference('TestGuideAnalysis.count') do
      post :create, test_guide_analysis: { media: @test_guide_analysis.media, name: @test_guide_analysis.name, order: @test_guide_analysis.order, statement: @test_guide_analysis.statement, test_id: @test_guide_analysis.test_id }
    end

    assert_redirected_to test_guide_analysis_path(assigns(:test_guide_analysis))
  end

  test "should show test_guide_analysis" do
    get :show, id: @test_guide_analysis
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_guide_analysis
    assert_response :success
  end

  test "should update test_guide_analysis" do
    patch :update, id: @test_guide_analysis, test_guide_analysis: { media: @test_guide_analysis.media, name: @test_guide_analysis.name, order: @test_guide_analysis.order, statement: @test_guide_analysis.statement, test_id: @test_guide_analysis.test_id }
    assert_redirected_to test_guide_analysis_path(assigns(:test_guide_analysis))
  end

  test "should destroy test_guide_analysis" do
    assert_difference('TestGuideAnalysis.count', -1) do
      delete :destroy, id: @test_guide_analysis
    end

    assert_redirected_to test_guide_analyses_path
  end
end
