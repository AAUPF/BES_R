require "application_system_test_case"

class UdpStatePlan2sTest < ApplicationSystemTestCase
  setup do
    @udp_state_plan2 = udp_state_plan2s(:one)
  end

  test "visiting the index" do
    visit udp_state_plan2s_url
    assert_selector "h1", text: "Udp State Plan2s"
  end

  test "creating a Udp state plan2" do
    visit udp_state_plan2s_url
    click_on "New Udp State Plan2"

    fill_in "Districts", with: @udp_state_plan2.Districts
    fill_in "Number Of Households Having Access To Tap Water 2016 17", with: @udp_state_plan2.Number_of_Households_Having_Access_to_Tap_Water_2016_17
    fill_in "Number Of Households Having Access To Tap Water 2016 18", with: @udp_state_plan2.Number_of_Households_Having_Access_to_Tap_Water_2016_18
    fill_in "Number Of Households Having Access To Tap Water 2017 18", with: @udp_state_plan2.Number_of_Households_Having_Access_to_Tap_Water_2017_18
    fill_in "Number Of Households Having Piped Water Supply", with: @udp_state_plan2.Number_of_Households_Having_Piped_Water_Supply
    fill_in "Total Number Of Urban Households", with: @udp_state_plan2.Total_Number_of_Urban_Households
    fill_in "Total Number Of Urban Ward", with: @udp_state_plan2.Total_Number_of_Urban_Ward
    click_on "Create Udp state plan2"

    assert_text "Udp state plan2 was successfully created"
    click_on "Back"
  end

  test "updating a Udp state plan2" do
    visit udp_state_plan2s_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @udp_state_plan2.Districts
    fill_in "Number Of Households Having Access To Tap Water 2016 17", with: @udp_state_plan2.Number_of_Households_Having_Access_to_Tap_Water_2016_17
    fill_in "Number Of Households Having Access To Tap Water 2016 18", with: @udp_state_plan2.Number_of_Households_Having_Access_to_Tap_Water_2016_18
    fill_in "Number Of Households Having Access To Tap Water 2017 18", with: @udp_state_plan2.Number_of_Households_Having_Access_to_Tap_Water_2017_18
    fill_in "Number Of Households Having Piped Water Supply", with: @udp_state_plan2.Number_of_Households_Having_Piped_Water_Supply
    fill_in "Total Number Of Urban Households", with: @udp_state_plan2.Total_Number_of_Urban_Households
    fill_in "Total Number Of Urban Ward", with: @udp_state_plan2.Total_Number_of_Urban_Ward
    click_on "Update Udp state plan2"

    assert_text "Udp state plan2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Udp state plan2" do
    visit udp_state_plan2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Udp state plan2 was successfully destroyed"
  end
end
