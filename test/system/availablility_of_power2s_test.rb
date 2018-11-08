require "application_system_test_case"

class AvailablilityOfPower2sTest < ApplicationSystemTestCase
  setup do
    @availablility_of_power2 = availablility_of_power2s(:one)
  end

  test "visiting the index" do
    visit availablility_of_power2s_url
    assert_selector "h1", text: "Availablility Of Power2s"
  end

  test "creating a Availablility of power2" do
    visit availablility_of_power2s_url
    click_on "New Availablility Of Power2"

    fill_in "Consumption", with: @availablility_of_power2.Consumption
    fill_in "Districts", with: @availablility_of_power2.Districts
    fill_in "Year", with: @availablility_of_power2.Year
    click_on "Create Availablility of power2"

    assert_text "Availablility of power2 was successfully created"
    click_on "Back"
  end

  test "updating a Availablility of power2" do
    visit availablility_of_power2s_url
    click_on "Edit", match: :first

    fill_in "Consumption", with: @availablility_of_power2.Consumption
    fill_in "Districts", with: @availablility_of_power2.Districts
    fill_in "Year", with: @availablility_of_power2.Year
    click_on "Update Availablility of power2"

    assert_text "Availablility of power2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Availablility of power2" do
    visit availablility_of_power2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Availablility of power2 was successfully destroyed"
  end
end
