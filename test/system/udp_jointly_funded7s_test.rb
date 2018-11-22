require "application_system_test_case"

class UdpJointlyFunded7sTest < ApplicationSystemTestCase
  setup do
    @udp_jointly_funded7 = udp_jointly_funded7s(:one)
  end

  test "visiting the index" do
    visit udp_jointly_funded7s_url
    assert_selector "h1", text: "Udp Jointly Funded7s"
  end

  test "creating a Udp jointly funded7" do
    visit udp_jointly_funded7s_url
    click_on "New Udp Jointly Funded7"

    fill_in "Already Constructed Refurbished And Under Process", with: @udp_jointly_funded7.Already_constructed_refurbished_and_under_process
    fill_in "Operational", with: @udp_jointly_funded7.Operational
    fill_in "Shelters Sanctioned Planned", with: @udp_jointly_funded7.Shelters_Sanctioned_Planned
    fill_in "Under Process Of Construction Refurbishment", with: @udp_jointly_funded7.Under_process_of_construction_refurbishment
    click_on "Create Udp jointly funded7"

    assert_text "Udp jointly funded7 was successfully created"
    click_on "Back"
  end

  test "updating a Udp jointly funded7" do
    visit udp_jointly_funded7s_url
    click_on "Edit", match: :first

    fill_in "Already Constructed Refurbished And Under Process", with: @udp_jointly_funded7.Already_constructed_refurbished_and_under_process
    fill_in "Operational", with: @udp_jointly_funded7.Operational
    fill_in "Shelters Sanctioned Planned", with: @udp_jointly_funded7.Shelters_Sanctioned_Planned
    fill_in "Under Process Of Construction Refurbishment", with: @udp_jointly_funded7.Under_process_of_construction_refurbishment
    click_on "Update Udp jointly funded7"

    assert_text "Udp jointly funded7 was successfully updated"
    click_on "Back"
  end

  test "destroying a Udp jointly funded7" do
    visit udp_jointly_funded7s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Udp jointly funded7 was successfully destroyed"
  end
end
