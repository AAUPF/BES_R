require "application_system_test_case"

class ProductionAndProductivityOfRicesTest < ApplicationSystemTestCase
  setup do
    @production_and_productivity_of_rice = production_and_productivity_of_rices(:one)
  end

  test "visiting the index" do
    visit production_and_productivity_of_rices_url
    assert_selector "h1", text: "Production And Productivity Of Rices"
  end

  test "creating a Production and productivity of rice" do
    visit production_and_productivity_of_rices_url
    click_on "New Production And Productivity Of Rice"

    fill_in "Area", with: @production_and_productivity_of_rice.Area
    fill_in "Districts", with: @production_and_productivity_of_rice.Districts
    fill_in "Production", with: @production_and_productivity_of_rice.Production
    fill_in "Productivity", with: @production_and_productivity_of_rice.Productivity
    fill_in "Year", with: @production_and_productivity_of_rice.Year
    click_on "Create Production and productivity of rice"

    assert_text "Production and productivity of rice was successfully created"
    click_on "Back"
  end

  test "updating a Production and productivity of rice" do
    visit production_and_productivity_of_rices_url
    click_on "Edit", match: :first

    fill_in "Area", with: @production_and_productivity_of_rice.Area
    fill_in "Districts", with: @production_and_productivity_of_rice.Districts
    fill_in "Production", with: @production_and_productivity_of_rice.Production
    fill_in "Productivity", with: @production_and_productivity_of_rice.Productivity
    fill_in "Year", with: @production_and_productivity_of_rice.Year
    click_on "Update Production and productivity of rice"

    assert_text "Production and productivity of rice was successfully updated"
    click_on "Back"
  end

  test "destroying a Production and productivity of rice" do
    visit production_and_productivity_of_rices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Production and productivity of rice was successfully destroyed"
  end
end
