require "application_system_test_case"

class UdpStatePlan1sTest < ApplicationSystemTestCase
  setup do
    @udp_state_plan1 = udp_state_plan1s(:one)
  end

  test "visiting the index" do
    visit udp_state_plan1s_url
    assert_selector "h1", text: "Udp State Plan1s"
  end

  test "creating a Udp state plan1" do
    visit udp_state_plan1s_url
    click_on "New Udp State Plan1"

    fill_in "Indicators", with: @udp_state_plan1.Indicators
    fill_in "No Of Households", with: @udp_state_plan1.No_of_households
    click_on "Create Udp state plan1"

    assert_text "Udp state plan1 was successfully created"
    click_on "Back"
  end

  test "updating a Udp state plan1" do
    visit udp_state_plan1s_url
    click_on "Edit", match: :first

    fill_in "Indicators", with: @udp_state_plan1.Indicators
    fill_in "No Of Households", with: @udp_state_plan1.No_of_households
    click_on "Update Udp state plan1"

    assert_text "Udp state plan1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Udp state plan1" do
    visit udp_state_plan1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Udp state plan1 was successfully destroyed"
  end
end
