require "application_system_test_case"

class ProductionProductivity9sTest < ApplicationSystemTestCase
  setup do
    @production_productivity9 = production_productivity9s(:one)
  end

  test "visiting the index" do
    visit production_productivity9s_url
    assert_selector "h1", text: "Production Productivity9s"
  end

  test "creating a Production productivity9" do
    visit production_productivity9s_url
    click_on "New Production Productivity9"

    fill_in "Area", with: @production_productivity9.Area
    fill_in "Districts", with: @production_productivity9.Districts
    fill_in "Production", with: @production_productivity9.Production
    fill_in "Productivity", with: @production_productivity9.Productivity
    fill_in "Year", with: @production_productivity9.Year
    click_on "Create Production productivity9"

    assert_text "Production productivity9 was successfully created"
    click_on "Back"
  end

  test "updating a Production productivity9" do
    visit production_productivity9s_url
    click_on "Edit", match: :first

    fill_in "Area", with: @production_productivity9.Area
    fill_in "Districts", with: @production_productivity9.Districts
    fill_in "Production", with: @production_productivity9.Production
    fill_in "Productivity", with: @production_productivity9.Productivity
    fill_in "Year", with: @production_productivity9.Year
    click_on "Update Production productivity9"

    assert_text "Production productivity9 was successfully updated"
    click_on "Back"
  end

  test "destroying a Production productivity9" do
    visit production_productivity9s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Production productivity9 was successfully destroyed"
  end
end
