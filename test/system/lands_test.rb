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

    fill_in "Barren Unculturable Land", with: @land.Barren_unculturable_land
    fill_in "Barren Unculturable Land Colour", with: @land.Barren_unculturable_land_Colour
    fill_in "Cropping Intensity", with: @land.Cropping_Intensity
    fill_in "Cropping Intensity Colour", with: @land.Cropping_Intensity_Colour
    fill_in "Culturable Waste Land", with: @land.Culturable_Waste_Land
    fill_in "Culturable Waste Land Colour", with: @land.Culturable_Waste_Land_Colour
    fill_in "Current Fallow", with: @land.Current_Fallow
    fill_in "Current Fallow Colour", with: @land.Current_Fallow_Colour
    fill_in "Districts", with: @land.Districts
    fill_in "Fallow Land", with: @land.Fallow_land
    fill_in "Forest", with: @land.Forest
    fill_in "Forest Colour", with: @land.Forest_Colour
    fill_in "Geographical Area", with: @land.Geographical_area
    fill_in "Geographical Area Colour", with: @land.Geographical_area_Colour
    fill_in "Gross Crop Area", with: @land.Gross_Crop_Area
    fill_in "Gross Crop Area Colour", with: @land.Gross_Crop_Area_Colour
    fill_in "Net Area Sown", with: @land.Net_Area_Sown
    fill_in "Net Area Sown Colour", with: @land.Net_Area_Sown_Colour
    fill_in "Non Agriculture Land Area", with: @land.Non_Agriculture_Land_area
    fill_in "Non Agriculture Land Area Colour", with: @land.Non_Agriculture_Land_area_Colour
    fill_in "Non Agriculture Perennial Water Area", with: @land.Non_Agriculture_Perennial_Water_Area
    fill_in "Non Agriculture Perennial Water Area Colour", with: @land.Non_Agriculture_Perennial_Water_Area_Colour
    fill_in "Non Agriculture Temporary Water Area", with: @land.Non_Agriculture_Temporary_Water_Area
    fill_in "Non Agriculture Temporary Water Area Colour", with: @land.Non_Agriculture_Temporary_Water_Area_Colour
    fill_in "Permanent Pastures", with: @land.Permanent_Pastures
    fill_in "Permanent Pastures Colour", with: @land.Permanent_Pastures_Colour
    fill_in "Total Uncultivable Land", with: @land.Total_Uncultivable_Land
    fill_in "Total Uncultivable Land Colour", with: @land.Total_Uncultivable_Land_Colour
    fill_in "Tree Crops", with: @land.Tree_Crops
    fill_in "Tree Crops Colour", with: @land.Tree_Crops_Colour
    fill_in "Colourfallow Land", with: @land._ColourFallow_land
    click_on "Create Land"

    assert_text "Land was successfully created"
    click_on "Back"
  end

  test "updating a Land" do
    visit lands_url
    click_on "Edit", match: :first

    fill_in "Barren Unculturable Land", with: @land.Barren_unculturable_land
    fill_in "Barren Unculturable Land Colour", with: @land.Barren_unculturable_land_Colour
    fill_in "Cropping Intensity", with: @land.Cropping_Intensity
    fill_in "Cropping Intensity Colour", with: @land.Cropping_Intensity_Colour
    fill_in "Culturable Waste Land", with: @land.Culturable_Waste_Land
    fill_in "Culturable Waste Land Colour", with: @land.Culturable_Waste_Land_Colour
    fill_in "Current Fallow", with: @land.Current_Fallow
    fill_in "Current Fallow Colour", with: @land.Current_Fallow_Colour
    fill_in "Districts", with: @land.Districts
    fill_in "Fallow Land", with: @land.Fallow_land
    fill_in "Forest", with: @land.Forest
    fill_in "Forest Colour", with: @land.Forest_Colour
    fill_in "Geographical Area", with: @land.Geographical_area
    fill_in "Geographical Area Colour", with: @land.Geographical_area_Colour
    fill_in "Gross Crop Area", with: @land.Gross_Crop_Area
    fill_in "Gross Crop Area Colour", with: @land.Gross_Crop_Area_Colour
    fill_in "Net Area Sown", with: @land.Net_Area_Sown
    fill_in "Net Area Sown Colour", with: @land.Net_Area_Sown_Colour
    fill_in "Non Agriculture Land Area", with: @land.Non_Agriculture_Land_area
    fill_in "Non Agriculture Land Area Colour", with: @land.Non_Agriculture_Land_area_Colour
    fill_in "Non Agriculture Perennial Water Area", with: @land.Non_Agriculture_Perennial_Water_Area
    fill_in "Non Agriculture Perennial Water Area Colour", with: @land.Non_Agriculture_Perennial_Water_Area_Colour
    fill_in "Non Agriculture Temporary Water Area", with: @land.Non_Agriculture_Temporary_Water_Area
    fill_in "Non Agriculture Temporary Water Area Colour", with: @land.Non_Agriculture_Temporary_Water_Area_Colour
    fill_in "Permanent Pastures", with: @land.Permanent_Pastures
    fill_in "Permanent Pastures Colour", with: @land.Permanent_Pastures_Colour
    fill_in "Total Uncultivable Land", with: @land.Total_Uncultivable_Land
    fill_in "Total Uncultivable Land Colour", with: @land.Total_Uncultivable_Land_Colour
    fill_in "Tree Crops", with: @land.Tree_Crops
    fill_in "Tree Crops Colour", with: @land.Tree_Crops_Colour
    fill_in "Colourfallow Land", with: @land._ColourFallow_land
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
