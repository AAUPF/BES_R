require "application_system_test_case"

class ProductionProductivity4sTest < ApplicationSystemTestCase
  setup do
    @production_productivity4 = production_productivity4s(:one)
  end

  test "visiting the index" do
    visit production_productivity4s_url
    assert_selector "h1", text: "Production Productivity4s"
  end

  test "creating a Production productivity4" do
    visit production_productivity4s_url
    click_on "New Production Productivity4"

    fill_in "Area", with: @production_productivity4.Area
    fill_in "Fruits", with: @production_productivity4.Fruits
    fill_in "Production", with: @production_productivity4.Production
    fill_in "Year", with: @production_productivity4.Year
    click_on "Create Production productivity4"

    assert_text "Production productivity4 was successfully created"
    click_on "Back"
  end

  test "updating a Production productivity4" do
    visit production_productivity4s_url
    click_on "Edit", match: :first

    fill_in "Area", with: @production_productivity4.Area
    fill_in "Fruits", with: @production_productivity4.Fruits
    fill_in "Production", with: @production_productivity4.Production
    fill_in "Year", with: @production_productivity4.Year
    click_on "Update Production productivity4"

    assert_text "Production productivity4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Production productivity4" do
    visit production_productivity4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Production productivity4 was successfully destroyed"
  end
end
