require "application_system_test_case"

class AgriculturalInputs8sTest < ApplicationSystemTestCase
  setup do
    @agricultural_inputs8 = agricultural_inputs8s(:one)
  end

  test "visiting the index" do
    visit agricultural_inputs8s_url
    assert_selector "h1", text: "Agricultural Inputs8s"
  end

  test "creating a Agricultural inputs8" do
    visit agricultural_inputs8s_url
    click_on "New Agricultural Inputs8"

    fill_in "Combine Harvestor", with: @agricultural_inputs8.Combine_Harvestor
    fill_in "Districts", with: @agricultural_inputs8.Districts
    fill_in "Manually Operated Tools", with: @agricultural_inputs8.Manually_Operated_Tools
    fill_in "Power Tiller", with: @agricultural_inputs8.Power_Tiller
    fill_in "Pumpset", with: @agricultural_inputs8.Pumpset
    fill_in "Thresher", with: @agricultural_inputs8.Thresher
    fill_in "Tractor", with: @agricultural_inputs8.Tractor
    fill_in "Zero Tillage", with: @agricultural_inputs8.Zero_Tillage
    click_on "Create Agricultural inputs8"

    assert_text "Agricultural inputs8 was successfully created"
    click_on "Back"
  end

  test "updating a Agricultural inputs8" do
    visit agricultural_inputs8s_url
    click_on "Edit", match: :first

    fill_in "Combine Harvestor", with: @agricultural_inputs8.Combine_Harvestor
    fill_in "Districts", with: @agricultural_inputs8.Districts
    fill_in "Manually Operated Tools", with: @agricultural_inputs8.Manually_Operated_Tools
    fill_in "Power Tiller", with: @agricultural_inputs8.Power_Tiller
    fill_in "Pumpset", with: @agricultural_inputs8.Pumpset
    fill_in "Thresher", with: @agricultural_inputs8.Thresher
    fill_in "Tractor", with: @agricultural_inputs8.Tractor
    fill_in "Zero Tillage", with: @agricultural_inputs8.Zero_Tillage
    click_on "Update Agricultural inputs8"

    assert_text "Agricultural inputs8 was successfully updated"
    click_on "Back"
  end

  test "destroying a Agricultural inputs8" do
    visit agricultural_inputs8s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agricultural inputs8 was successfully destroyed"
  end
end
