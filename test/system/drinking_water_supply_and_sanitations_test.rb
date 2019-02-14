require "application_system_test_case"

class DrinkingWaterSupplyAndSanitationsTest < ApplicationSystemTestCase
  setup do
    @drinking_water_supply_and_sanitation = drinking_water_supply_and_sanitations(:one)
  end

  test "visiting the index" do
    visit drinking_water_supply_and_sanitations_url
    assert_selector "h1", text: "Drinking Water Supply And Sanitations"
  end

  test "creating a Drinking water supply and sanitation" do
    visit drinking_water_supply_and_sanitations_url
    click_on "New Drinking Water Supply And Sanitation"

    fill_in "Affected Districts", with: @drinking_water_supply_and_sanitation.Affected_Districts
    fill_in "Contaminants", with: @drinking_water_supply_and_sanitation.Contaminants
    click_on "Create Drinking water supply and sanitation"

    assert_text "Drinking water supply and sanitation was successfully created"
    click_on "Back"
  end

  test "updating a Drinking water supply and sanitation" do
    visit drinking_water_supply_and_sanitations_url
    click_on "Edit", match: :first

    fill_in "Affected Districts", with: @drinking_water_supply_and_sanitation.Affected_Districts
    fill_in "Contaminants", with: @drinking_water_supply_and_sanitation.Contaminants
    click_on "Update Drinking water supply and sanitation"

    assert_text "Drinking water supply and sanitation was successfully updated"
    click_on "Back"
  end

  test "destroying a Drinking water supply and sanitation" do
    visit drinking_water_supply_and_sanitations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Drinking water supply and sanitation was successfully destroyed"
  end
end
