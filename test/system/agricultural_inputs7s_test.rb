require "application_system_test_case"

class AgriculturalInputs7sTest < ApplicationSystemTestCase
  setup do
    @agricultural_inputs7 = agricultural_inputs7s(:one)
  end

  test "visiting the index" do
    visit agricultural_inputs7s_url
    assert_selector "h1", text: "Agricultural Inputs7s"
  end

  test "creating a Agricultural inputs7" do
    visit agricultural_inputs7s_url
    click_on "New Agricultural Inputs7"

    fill_in "Combine Harvestor", with: @agricultural_inputs7.Combine_Harvestor
    fill_in "Combine Harvestor Colour", with: @agricultural_inputs7.Combine_Harvestor_Colour
    fill_in "Districts", with: @agricultural_inputs7.Districts
    fill_in "Manually Operated Tools", with: @agricultural_inputs7.Manually_Operated_Tools
    fill_in "Manually Operated Tools Colour", with: @agricultural_inputs7.Manually_Operated_Tools_Colour
    fill_in "Power Tiller", with: @agricultural_inputs7.Power_Tiller
    fill_in "Power Tiller Colour", with: @agricultural_inputs7.Power_Tiller_Colour
    fill_in "Pumpset", with: @agricultural_inputs7.Pumpset
    fill_in "Pumpset Colour", with: @agricultural_inputs7.Pumpset_Colour
    fill_in "Thresher", with: @agricultural_inputs7.Thresher
    fill_in "Thresher Colour", with: @agricultural_inputs7.Thresher_Colour
    fill_in "Tractor", with: @agricultural_inputs7.Tractor
    fill_in "Tractor Colour", with: @agricultural_inputs7.Tractor_Colour
    fill_in "Year", with: @agricultural_inputs7.Year
    fill_in "Zero Tillage", with: @agricultural_inputs7.Zero_Tillage
    fill_in "Zero Tillage Colour", with: @agricultural_inputs7.Zero_Tillage_Colour
    click_on "Create Agricultural inputs7"

    assert_text "Agricultural inputs7 was successfully created"
    click_on "Back"
  end

  test "updating a Agricultural inputs7" do
    visit agricultural_inputs7s_url
    click_on "Edit", match: :first

    fill_in "Combine Harvestor", with: @agricultural_inputs7.Combine_Harvestor
    fill_in "Combine Harvestor Colour", with: @agricultural_inputs7.Combine_Harvestor_Colour
    fill_in "Districts", with: @agricultural_inputs7.Districts
    fill_in "Manually Operated Tools", with: @agricultural_inputs7.Manually_Operated_Tools
    fill_in "Manually Operated Tools Colour", with: @agricultural_inputs7.Manually_Operated_Tools_Colour
    fill_in "Power Tiller", with: @agricultural_inputs7.Power_Tiller
    fill_in "Power Tiller Colour", with: @agricultural_inputs7.Power_Tiller_Colour
    fill_in "Pumpset", with: @agricultural_inputs7.Pumpset
    fill_in "Pumpset Colour", with: @agricultural_inputs7.Pumpset_Colour
    fill_in "Thresher", with: @agricultural_inputs7.Thresher
    fill_in "Thresher Colour", with: @agricultural_inputs7.Thresher_Colour
    fill_in "Tractor", with: @agricultural_inputs7.Tractor
    fill_in "Tractor Colour", with: @agricultural_inputs7.Tractor_Colour
    fill_in "Year", with: @agricultural_inputs7.Year
    fill_in "Zero Tillage", with: @agricultural_inputs7.Zero_Tillage
    fill_in "Zero Tillage Colour", with: @agricultural_inputs7.Zero_Tillage_Colour
    click_on "Update Agricultural inputs7"

    assert_text "Agricultural inputs7 was successfully updated"
    click_on "Back"
  end

  test "destroying a Agricultural inputs7" do
    visit agricultural_inputs7s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agricultural inputs7 was successfully destroyed"
  end
end
