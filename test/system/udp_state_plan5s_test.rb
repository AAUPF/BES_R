require "application_system_test_case"

class UdpStatePlan5sTest < ApplicationSystemTestCase
  setup do
    @udp_state_plan5 = udp_state_plan5s(:one)
  end

  test "visiting the index" do
    visit udp_state_plan5s_url
    assert_selector "h1", text: "Udp State Plan5s"
  end

  test "creating a Udp state plan5" do
    visit udp_state_plan5s_url
    click_on "New Udp State Plan5"

    fill_in "Districts", with: @udp_state_plan5.Districts
    fill_in "Number Of Household Covered", with: @udp_state_plan5.Number_of_Household_covered
    fill_in "Number Of Households To Be Covered", with: @udp_state_plan5.Number_of_Households_to_be_covered
    fill_in "Total Number Of Urban Households", with: @udp_state_plan5.Total_Number_of_Urban_Households
    fill_in "Total Number Of Urban Wards", with: @udp_state_plan5.Total_Number_of_Urban_Wards
    click_on "Create Udp state plan5"

    assert_text "Udp state plan5 was successfully created"
    click_on "Back"
  end

  test "updating a Udp state plan5" do
    visit udp_state_plan5s_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @udp_state_plan5.Districts
    fill_in "Number Of Household Covered", with: @udp_state_plan5.Number_of_Household_covered
    fill_in "Number Of Households To Be Covered", with: @udp_state_plan5.Number_of_Households_to_be_covered
    fill_in "Total Number Of Urban Households", with: @udp_state_plan5.Total_Number_of_Urban_Households
    fill_in "Total Number Of Urban Wards", with: @udp_state_plan5.Total_Number_of_Urban_Wards
    click_on "Update Udp state plan5"

    assert_text "Udp state plan5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Udp state plan5" do
    visit udp_state_plan5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Udp state plan5 was successfully destroyed"
  end
end
