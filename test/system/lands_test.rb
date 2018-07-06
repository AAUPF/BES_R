require "application_system_test_case"

class LandsTest < ApplicationSystemTestCase
  setup do
    @land = lands(:one)
  end

  test "visiting the index" do
    visit lands_url
    assert_selector "h1", text: "Lands"
  end

  test "creating a Land" do
    visit lands_url
    click_on "New Land"

    fill_in "Barren And Unculturable Land", with: @land.Barren_and_Unculturable_land
    fill_in "Culturable Waste Land", with: @land.Culturable_Waste_Land
    fill_in "Districts", with: @land.Districts
    fill_in "Forest", with: @land.Forest
    fill_in "Geographical Area", with: @land.Geographical_Area
    fill_in "Non Agriculture Land Area", with: @land.Non_Agriculture_Land_Area
    fill_in "Non Agriculture Perennial", with: @land.Non_Agriculture_Perennial
    fill_in "Non Agriculture Temporary", with: @land.Non_Agriculture_Temporary
    click_on "Create Land"

    assert_text "Land was successfully created"
    click_on "Back"
  end

  test "updating a Land" do
    visit lands_url
    click_on "Edit", match: :first

    fill_in "Barren And Unculturable Land", with: @land.Barren_and_Unculturable_land
    fill_in "Culturable Waste Land", with: @land.Culturable_Waste_Land
    fill_in "Districts", with: @land.Districts
    fill_in "Forest", with: @land.Forest
    fill_in "Geographical Area", with: @land.Geographical_Area
    fill_in "Non Agriculture Land Area", with: @land.Non_Agriculture_Land_Area
    fill_in "Non Agriculture Perennial", with: @land.Non_Agriculture_Perennial
    fill_in "Non Agriculture Temporary", with: @land.Non_Agriculture_Temporary
    click_on "Update Land"

    assert_text "Land was successfully updated"
    click_on "Back"
  end

  test "destroying a Land" do
    visit lands_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Land was successfully destroyed"
  end
end
