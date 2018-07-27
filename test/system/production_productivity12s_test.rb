require "application_system_test_case"

class ProductionProductivity12sTest < ApplicationSystemTestCase
  setup do
    @production_productivity12 = production_productivity12s(:one)
  end

  test "visiting the index" do
    visit production_productivity12s_url
    assert_selector "h1", text: "Production Productivity12s"
  end

  test "creating a Production productivity12" do
    visit production_productivity12s_url
    click_on "New Production Productivity12"

    fill_in "Area", with: @production_productivity12.Area
    fill_in "Area Colour", with: @production_productivity12.Area_Colour
    fill_in "Districts", with: @production_productivity12.Districts
    fill_in "Production", with: @production_productivity12.Production
    fill_in "Production Colour", with: @production_productivity12.Production_Colour
    fill_in "Year", with: @production_productivity12.Year
    fill_in "Yield", with: @production_productivity12.Yield
    fill_in "Yield Colour", with: @production_productivity12.Yield_Colour
    click_on "Create Production productivity12"

    assert_text "Production productivity12 was successfully created"
    click_on "Back"
  end

  test "updating a Production productivity12" do
    visit production_productivity12s_url
    click_on "Edit", match: :first

    fill_in "Area", with: @production_productivity12.Area
    fill_in "Area Colour", with: @production_productivity12.Area_Colour
    fill_in "Districts", with: @production_productivity12.Districts
    fill_in "Production", with: @production_productivity12.Production
    fill_in "Production Colour", with: @production_productivity12.Production_Colour
    fill_in "Year", with: @production_productivity12.Year
    fill_in "Yield", with: @production_productivity12.Yield
    fill_in "Yield Colour", with: @production_productivity12.Yield_Colour
    click_on "Update Production productivity12"

    assert_text "Production productivity12 was successfully updated"
    click_on "Back"
  end

  test "destroying a Production productivity12" do
    visit production_productivity12s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Production productivity12 was successfully destroyed"
  end
end
