require "application_system_test_case"

describe "Agents", :system do
  let(:agent) { agents(:one) }

  it "visiting the index" do
    visit agents_url
    assert_selector "h1", text: "Agents"
  end

  it "creating a Agent" do
    visit agents_url
    click_on "New Agent"

    fill_in "A make", with: @agent.a_make
    fill_in "A model", with: @agent.a_model
    fill_in "User", with: @agent.user_id
    fill_in "Uuid", with: @agent.uuid
    click_on "Create Agent"

    assert_text "Agent was successfully created"
    click_on "Back"
  end

  it "updating a Agent" do
    visit agents_url
    click_on "Edit", match: :first

    fill_in "A make", with: @agent.a_make
    fill_in "A model", with: @agent.a_model
    fill_in "User", with: @agent.user_id
    fill_in "Uuid", with: @agent.uuid
    click_on "Update Agent"

    assert_text "Agent was successfully updated"
    click_on "Back"
  end

  it "destroying a Agent" do
    visit agents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agent was successfully destroyed"
  end
end
