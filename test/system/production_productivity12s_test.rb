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

    fill_in "Area 2015", with: @production_productivity12.Area_2015
    fill_in "Area 2016", with: @production_productivity12.Area_2016
    fill_in "Districts", with: @production_productivity12.Districts
    fill_in "Production 2015", with: @production_productivity12.Production_2015
    fill_in "Production 2016", with: @production_productivity12.Production_2016
    fill_in "Yield 2015", with: @production_productivity12.Yield_2015
    fill_in "Yield 2016", with: @production_productivity12.Yield_2016
    click_on "Create Production productivity12"

    assert_text "Production productivity12 was successfully created"
    click_on "Back"
  end

  test "updating a Production productivity12" do
    visit production_productivity12s_url
    click_on "Edit", match: :first

    fill_in "Area 2015", with: @production_productivity12.Area_2015
    fill_in "Area 2016", with: @production_productivity12.Area_2016
    fill_in "Districts", with: @production_productivity12.Districts
    fill_in "Production 2015", with: @production_productivity12.Production_2015
    fill_in "Production 2016", with: @production_productivity12.Production_2016
    fill_in "Yield 2015", with: @production_productivity12.Yield_2015
    fill_in "Yield 2016", with: @production_productivity12.Yield_2016
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
