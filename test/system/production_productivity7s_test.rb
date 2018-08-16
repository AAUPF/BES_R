require "application_system_test_case"

class ProductionProductivity7sTest < ApplicationSystemTestCase
  setup do
    @production_productivity7 = production_productivity7s(:one)
  end

  test "visiting the index" do
    visit production_productivity7s_url
    assert_selector "h1", text: "Production Productivity7s"
  end

  test "creating a Production productivity7" do
    visit production_productivity7s_url
    click_on "New Production Productivity7"

    fill_in "Area", with: @production_productivity7.Area
    fill_in "Districts", with: @production_productivity7.Districts
    fill_in "Percentage Area", with: @production_productivity7.Percentage_Area
    fill_in "Percentage Production", with: @production_productivity7.Percentage_Production
    fill_in "Production", with: @production_productivity7.Production
    fill_in "Productivity", with: @production_productivity7.Productivity
    fill_in "Year", with: @production_productivity7.Year
    click_on "Create Production productivity7"

    assert_text "Production productivity7 was successfully created"
    click_on "Back"
  end

  test "updating a Production productivity7" do
    visit production_productivity7s_url
    click_on "Edit", match: :first

    fill_in "Area", with: @production_productivity7.Area
    fill_in "Districts", with: @production_productivity7.Districts
    fill_in "Percentage Area", with: @production_productivity7.Percentage_Area
    fill_in "Percentage Production", with: @production_productivity7.Percentage_Production
    fill_in "Production", with: @production_productivity7.Production
    fill_in "Productivity", with: @production_productivity7.Productivity
    fill_in "Year", with: @production_productivity7.Year
    click_on "Update Production productivity7"

    assert_text "Production productivity7 was successfully updated"
    click_on "Back"
  end

  test "destroying a Production productivity7" do
    visit production_productivity7s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Production productivity7 was successfully destroyed"
  end
end
