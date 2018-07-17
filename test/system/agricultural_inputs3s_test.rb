require "application_system_test_case"

class AgriculturalInputs3sTest < ApplicationSystemTestCase
  setup do
    @agricultural_inputs3 = agricultural_inputs3s(:one)
  end

  test "visiting the index" do
    visit agricultural_inputs3s_url
    assert_selector "h1", text: "Agricultural Inputs3s"
  end

  test "creating a Agricultural inputs3" do
    visit agricultural_inputs3s_url
    click_on "New Agricultural Inputs3"

    fill_in "Combine Harvestors", with: @agricultural_inputs3.Combine_Harvestors
    fill_in "Manually Operated Tools Implements", with: @agricultural_inputs3.Manually_operated_tools_implements
    fill_in "Power Tiller", with: @agricultural_inputs3.Power_Tiller
    fill_in "Pumpsets", with: @agricultural_inputs3.Pumpsets
    fill_in "Threshers", with: @agricultural_inputs3.Threshers
    fill_in "Total", with: @agricultural_inputs3.Total
    fill_in "Tractor", with: @agricultural_inputs3.Tractor
    fill_in "Year", with: @agricultural_inputs3.Year
    fill_in "Zero Tillage", with: @agricultural_inputs3.Zero_Tillage
    click_on "Create Agricultural inputs3"

    assert_text "Agricultural inputs3 was successfully created"
    click_on "Back"
  end

  test "updating a Agricultural inputs3" do
    visit agricultural_inputs3s_url
    click_on "Edit", match: :first

    fill_in "Combine Harvestors", with: @agricultural_inputs3.Combine_Harvestors
    fill_in "Manually Operated Tools Implements", with: @agricultural_inputs3.Manually_operated_tools_implements
    fill_in "Power Tiller", with: @agricultural_inputs3.Power_Tiller
    fill_in "Pumpsets", with: @agricultural_inputs3.Pumpsets
    fill_in "Threshers", with: @agricultural_inputs3.Threshers
    fill_in "Total", with: @agricultural_inputs3.Total
    fill_in "Tractor", with: @agricultural_inputs3.Tractor
    fill_in "Year", with: @agricultural_inputs3.Year
    fill_in "Zero Tillage", with: @agricultural_inputs3.Zero_Tillage
    click_on "Update Agricultural inputs3"

    assert_text "Agricultural inputs3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Agricultural inputs3" do
    visit agricultural_inputs3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agricultural inputs3 was successfully destroyed"
  end
end
