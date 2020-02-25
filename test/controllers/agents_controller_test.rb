require "test_helper"

describe AgentsController do
  let(:agent) { agents(:one) }

  it "should get index" do
    get agents_url
    must_respond_with :success
  end

  it "should get new" do
    get new_agent_url
    must_respond_with :success
  end

  it "should create agent" do
    assert_difference("Agent.count") do
      post agents_url, params: { agent: { a_make: @agent.a_make, a_model: @agent.a_model, user_id: @agent.user_id, uuid: @agent.uuid } }
    end

    must_redirect_to agent_url(Agent.last)
  end

  it "should show agent" do
    get agent_url(@agent)
    must_respond_with :success
  end

  it "should get edit" do
    get edit_agent_url(@agent)
    must_respond_with :success
  end

  it "should update agent" do
    patch agent_url(@agent), params: { agent: { a_make: @agent.a_make, a_model: @agent.a_model, user_id: @agent.user_id, uuid: @agent.uuid } }
    must_redirect_to agent_url(agent)
  end

  it "should destroy agent" do
    assert_difference("Agent.count", -1) do
      delete agent_url(@agent)
    end

    must_redirect_to agents_url
  end
end
