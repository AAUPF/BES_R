require "application_system_test_case"

class Transmission2sTest < ApplicationSystemTestCase
  setup do
    @transmission2 = transmission2s(:one)
  end

  test "visiting the index" do
    visit transmission2s_url
    assert_selector "h1", text: "Transmission2s"
  end

  test "creating a Transmission2" do
    visit transmission2s_url
    click_on "New Transmission2"

    fill_in "New Transmission Lines Circuit Km", with: @transmission2.New_Transmission_Lines_Circuit_km
    fill_in "Nos Of New Grid Sub Stations", with: @transmission2.Nos_of_New_Grid_Sub_Stations
    fill_in "Year", with: @transmission2.Year
    click_on "Create Transmission2"

    assert_text "Transmission2 was successfully created"
    click_on "Back"
  end

  test "updating a Transmission2" do
    visit transmission2s_url
    click_on "Edit", match: :first

    fill_in "New Transmission Lines Circuit Km", with: @transmission2.New_Transmission_Lines_Circuit_km
    fill_in "Nos Of New Grid Sub Stations", with: @transmission2.Nos_of_New_Grid_Sub_Stations
    fill_in "Year", with: @transmission2.Year
    click_on "Update Transmission2"

    assert_text "Transmission2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Transmission2" do
    visit transmission2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transmission2 was successfully destroyed"
  end
end
