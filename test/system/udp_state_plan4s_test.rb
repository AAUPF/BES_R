require "application_system_test_case"

class UdpStatePlan4sTest < ApplicationSystemTestCase
  setup do
    @udp_state_plan4 = udp_state_plan4s(:one)
  end

  test "visiting the index" do
    visit udp_state_plan4s_url
    assert_selector "h1", text: "Udp State Plan4s"
  end

  test "creating a Udp state plan4" do
    visit udp_state_plan4s_url
    click_on "New Udp State Plan4"

    fill_in "Indicators", with: @udp_state_plan4.Indicators
    fill_in "No Of Households", with: @udp_state_plan4.No_of_households
    click_on "Create Udp state plan4"

    assert_text "Udp state plan4 was successfully created"
    click_on "Back"
  end

  test "updating a Udp state plan4" do
    visit udp_state_plan4s_url
    click_on "Edit", match: :first

    fill_in "Indicators", with: @udp_state_plan4.Indicators
    fill_in "No Of Households", with: @udp_state_plan4.No_of_households
    click_on "Update Udp state plan4"

    assert_text "Udp state plan4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Udp state plan4" do
    visit udp_state_plan4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Udp state plan4 was successfully destroyed"
  end
end
