require "application_system_test_case"

class ProductionProductivity5sTest < ApplicationSystemTestCase
  setup do
    @production_productivity5 = production_productivity5s(:one)
  end

  test "visiting the index" do
    visit production_productivity5s_url
    assert_selector "h1", text: "Production Productivity5s"
  end

  test "creating a Production productivity5" do
    visit production_productivity5s_url
    click_on "New Production Productivity5"

    fill_in "Area", with: @production_productivity5.Area
    fill_in "Production", with: @production_productivity5.Production
    fill_in "Vegetables", with: @production_productivity5.Vegetables
    fill_in "Year", with: @production_productivity5.Year
    click_on "Create Production productivity5"

    assert_text "Production productivity5 was successfully created"
    click_on "Back"
  end

  test "updating a Production productivity5" do
    visit production_productivity5s_url
    click_on "Edit", match: :first

    fill_in "Area", with: @production_productivity5.Area
    fill_in "Production", with: @production_productivity5.Production
    fill_in "Vegetables", with: @production_productivity5.Vegetables
    fill_in "Year", with: @production_productivity5.Year
    click_on "Update Production productivity5"

    assert_text "Production productivity5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Production productivity5" do
    visit production_productivity5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Production productivity5 was successfully destroyed"
  end
end
