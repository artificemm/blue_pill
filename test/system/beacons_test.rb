require "application_system_test_case"

describe "Beacons", :system do
  let(:beacon) { beacons(:one) }

  it "visiting the index" do
    visit beacons_url
    assert_selector "h1", text: "Beacons"
  end

  it "creating a Beacon" do
    visit beacons_url
    click_on "New Beacon"

    fill_in "Major", with: @beacon.major
    fill_in "Minor", with: @beacon.minor
    fill_in "User", with: @beacon.user_id
    fill_in "Uuid", with: @beacon.uuid
    click_on "Create Beacon"

    assert_text "Beacon was successfully created"
    click_on "Back"
  end

  it "updating a Beacon" do
    visit beacons_url
    click_on "Edit", match: :first

    fill_in "Major", with: @beacon.major
    fill_in "Minor", with: @beacon.minor
    fill_in "User", with: @beacon.user_id
    fill_in "Uuid", with: @beacon.uuid
    click_on "Update Beacon"

    assert_text "Beacon was successfully updated"
    click_on "Back"
  end

  it "destroying a Beacon" do
    visit beacons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Beacon was successfully destroyed"
  end
end
