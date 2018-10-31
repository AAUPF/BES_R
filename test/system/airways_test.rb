require "application_system_test_case"

class AirwaysTest < ApplicationSystemTestCase
  setup do
    @airway = airways(:one)
  end

  test "visiting the index" do
    visit airways_url
    assert_selector "h1", text: "Airways"
  end

  test "creating a Airway" do
    visit airways_url
    click_on "New Airway"

    fill_in "Freight", with: @airway.Freight
    fill_in "Number Of Aircraft Movements", with: @airway.Number_of_Aircraft_Movements
    fill_in "Passengers", with: @airway.Passengers
    fill_in "Year", with: @airway.Year
    click_on "Create Airway"

    assert_text "Airway was successfully created"
    click_on "Back"
  end

  test "updating a Airway" do
    visit airways_url
    click_on "Edit", match: :first

    fill_in "Freight", with: @airway.Freight
    fill_in "Number Of Aircraft Movements", with: @airway.Number_of_Aircraft_Movements
    fill_in "Passengers", with: @airway.Passengers
    fill_in "Year", with: @airway.Year
    click_on "Update Airway"

    assert_text "Airway was successfully updated"
    click_on "Back"
  end

  test "destroying a Airway" do
    visit airways_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Airway was successfully destroyed"
  end
end
