require 'test_helper'

class TalentAgentsControllerTest < ActionController::TestCase
  setup do
    @talent_agent = talent_agents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:talent_agents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create talent_agent" do
    assert_difference('TalentAgent.count') do
      post :create, talent_agent: { dob: @talent_agent.dob, first_name: @talent_agent.first_name, last_name: @talent_agent.last_name, pitch: @talent_agent.pitch }
    end

    assert_redirected_to talent_agent_path(assigns(:talent_agent))
  end

  test "should show talent_agent" do
    get :show, id: @talent_agent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @talent_agent
    assert_response :success
  end

  test "should update talent_agent" do
    patch :update, id: @talent_agent, talent_agent: { dob: @talent_agent.dob, first_name: @talent_agent.first_name, last_name: @talent_agent.last_name, pitch: @talent_agent.pitch }
    assert_redirected_to talent_agent_path(assigns(:talent_agent))
  end

  test "should destroy talent_agent" do
    assert_difference('TalentAgent.count', -1) do
      delete :destroy, id: @talent_agent
    end

    assert_redirected_to talent_agents_path
  end
end
