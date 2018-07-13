require "application_system_test_case"

class Land1sTest < ApplicationSystemTestCase
  setup do
    @land1 = land1s(:one)
  end

  test "visiting the index" do
    visit land1s_url
    assert_selector "h1", text: "Land1s"
  end

  test "creating a Land1" do
    visit land1s_url
    click_on "New Land1"

    fill_in "Barren Unculturable Land", with: @land1.Barren_Unculturable_Land
    fill_in "Cropping Intensity", with: @land1.Cropping_Intensity
    fill_in "Culturable Waste", with: @land1.Culturable_Waste
    fill_in "Current Fallow", with: @land1.Current_Fallow
    fill_in "Fallow Land Excl Current Fallow", with: @land1.Fallow_Land_excl_Current_Fallow
    fill_in "Forests", with: @land1.Forests
    fill_in "Geographical Area", with: @land1.Geographical_Area
    fill_in "Gross Sown Area", with: @land1.Gross_Sown_Area
    fill_in "Land Area", with: @land1.Land_Area
    fill_in "Land Put To Non Agricultural Use", with: @land1.Land_put_to_Non_agricultural_use
    fill_in "Land Under Tree Crops", with: @land1.Land_under_Tree_Crops
    fill_in "Net Sown Area", with: @land1.Net_Sown_Area
    fill_in "Permanent Pastures", with: @land1.Permanent_Pastures
    fill_in "Total Unculturable Land", with: @land1.Total_Unculturable_Land
    fill_in "Water Area", with: @land1.Water_Area
    fill_in "Year", with: @land1.Year
    click_on "Create Land1"

    assert_text "Land1 was successfully created"
    click_on "Back"
  end

  test "updating a Land1" do
    visit land1s_url
    click_on "Edit", match: :first

    fill_in "Barren Unculturable Land", with: @land1.Barren_Unculturable_Land
    fill_in "Cropping Intensity", with: @land1.Cropping_Intensity
    fill_in "Culturable Waste", with: @land1.Culturable_Waste
    fill_in "Current Fallow", with: @land1.Current_Fallow
    fill_in "Fallow Land Excl Current Fallow", with: @land1.Fallow_Land_excl_Current_Fallow
    fill_in "Forests", with: @land1.Forests
    fill_in "Geographical Area", with: @land1.Geographical_Area
    fill_in "Gross Sown Area", with: @land1.Gross_Sown_Area
    fill_in "Land Area", with: @land1.Land_Area
    fill_in "Land Put To Non Agricultural Use", with: @land1.Land_put_to_Non_agricultural_use
    fill_in "Land Under Tree Crops", with: @land1.Land_under_Tree_Crops
    fill_in "Net Sown Area", with: @land1.Net_Sown_Area
    fill_in "Permanent Pastures", with: @land1.Permanent_Pastures
    fill_in "Total Unculturable Land", with: @land1.Total_Unculturable_Land
    fill_in "Water Area", with: @land1.Water_Area
    fill_in "Year", with: @land1.Year
    click_on "Update Land1"

    assert_text "Land1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Land1" do
    visit land1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Land1 was successfully destroyed"
  end
end
