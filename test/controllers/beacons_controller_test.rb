require "test_helper"

describe BeaconsController do
  let(:beacon) { beacons(:one) }

  it "should get index" do
    get beacons_url
    must_respond_with :success
  end

  it "should get new" do
    get new_beacon_url
    must_respond_with :success
  end

  it "should create beacon" do
    assert_difference("Beacon.count") do
      post beacons_url, params: { beacon: { major: @beacon.major, minor: @beacon.minor, user_id: @beacon.user_id, uuid: @beacon.uuid } }
    end

    must_redirect_to beacon_url(Beacon.last)
  end

  it "should show beacon" do
    get beacon_url(@beacon)
    must_respond_with :success
  end

  it "should get edit" do
    get edit_beacon_url(@beacon)
    must_respond_with :success
  end

  it "should update beacon" do
    patch beacon_url(@beacon), params: { beacon: { major: @beacon.major, minor: @beacon.minor, user_id: @beacon.user_id, uuid: @beacon.uuid } }
    must_redirect_to beacon_url(beacon)
  end

  it "should destroy beacon" do
    assert_difference("Beacon.count", -1) do
      delete beacon_url(@beacon)
    end

    must_redirect_to beacons_url
  end
end
