require "application_system_test_case"

class ProductionProductivity8sTest < ApplicationSystemTestCase
  setup do
    @production_productivity8 = production_productivity8s(:one)
  end

  test "visiting the index" do
    visit production_productivity8s_url
    assert_selector "h1", text: "Production Productivity8s"
  end

  test "creating a Production productivity8" do
    visit production_productivity8s_url
    click_on "New Production Productivity8"

    fill_in "Area", with: @production_productivity8.Area
    fill_in "Districts", with: @production_productivity8.Districts
    fill_in "Production", with: @production_productivity8.Production
    fill_in "Productivity", with: @production_productivity8.Productivity
    fill_in "Year", with: @production_productivity8.Year
    click_on "Create Production productivity8"

    assert_text "Production productivity8 was successfully created"
    click_on "Back"
  end

  test "updating a Production productivity8" do
    visit production_productivity8s_url
    click_on "Edit", match: :first

    fill_in "Area", with: @production_productivity8.Area
    fill_in "Districts", with: @production_productivity8.Districts
    fill_in "Production", with: @production_productivity8.Production
    fill_in "Productivity", with: @production_productivity8.Productivity
    fill_in "Year", with: @production_productivity8.Year
    click_on "Update Production productivity8"

    assert_text "Production productivity8 was successfully updated"
    click_on "Back"
  end

  test "destroying a Production productivity8" do
    visit production_productivity8s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Production productivity8 was successfully destroyed"
  end
end
