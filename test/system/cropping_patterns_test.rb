require "application_system_test_case"

class CroppingPatternsTest < ApplicationSystemTestCase
  setup do
    @cropping_pattern = cropping_patterns(:one)
  end

  test "visiting the index" do
    visit cropping_patterns_url
    assert_selector "h1", text: "Cropping Patterns"
  end

  test "creating a Cropping pattern" do
    visit cropping_patterns_url
    click_on "New Cropping Pattern"

    fill_in "Cereals", with: @cropping_pattern.Cereals
    fill_in "Fibre Crops", with: @cropping_pattern.Fibre_Crops
    fill_in "Food Grains", with: @cropping_pattern.Food_grains
    fill_in "Oil Seeds", with: @cropping_pattern.Oil_seeds
    fill_in "Pulses", with: @cropping_pattern.Pulses
    fill_in "Sugarcane", with: @cropping_pattern.Sugarcane
    fill_in "Total Area", with: @cropping_pattern.Total_Area
    fill_in "Year", with: @cropping_pattern.Year
    click_on "Create Cropping pattern"

    assert_text "Cropping pattern was successfully created"
    click_on "Back"
  end

  test "updating a Cropping pattern" do
    visit cropping_patterns_url
    click_on "Edit", match: :first

    fill_in "Cereals", with: @cropping_pattern.Cereals
    fill_in "Fibre Crops", with: @cropping_pattern.Fibre_Crops
    fill_in "Food Grains", with: @cropping_pattern.Food_grains
    fill_in "Oil Seeds", with: @cropping_pattern.Oil_seeds
    fill_in "Pulses", with: @cropping_pattern.Pulses
    fill_in "Sugarcane", with: @cropping_pattern.Sugarcane
    fill_in "Total Area", with: @cropping_pattern.Total_Area
    fill_in "Year", with: @cropping_pattern.Year
    click_on "Update Cropping pattern"

    assert_text "Cropping pattern was successfully updated"
    click_on "Back"
  end

  test "destroying a Cropping pattern" do
    visit cropping_patterns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cropping pattern was successfully destroyed"
  end
end
