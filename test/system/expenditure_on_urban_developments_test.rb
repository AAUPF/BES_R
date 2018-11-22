require "application_system_test_case"

class ExpenditureOnUrbanDevelopmentsTest < ApplicationSystemTestCase
  setup do
    @expenditure_on_urban_development = expenditure_on_urban_developments(:one)
  end

  test "visiting the index" do
    visit expenditure_on_urban_developments_url
    assert_selector "h1", text: "Expenditure On Urban Developments"
  end

  test "creating a Expenditure on urban development" do
    visit expenditure_on_urban_developments_url
    click_on "New Expenditure On Urban Development"

    fill_in "Housing", with: @expenditure_on_urban_development.Housing
    fill_in "Indicator", with: @expenditure_on_urban_development.Indicator
    fill_in "Total", with: @expenditure_on_urban_development.Total
    fill_in "Urban Development", with: @expenditure_on_urban_development.Urban_Development
    fill_in "Year", with: @expenditure_on_urban_development.Year
    click_on "Create Expenditure on urban development"

    assert_text "Expenditure on urban development was successfully created"
    click_on "Back"
  end

  test "updating a Expenditure on urban development" do
    visit expenditure_on_urban_developments_url
    click_on "Edit", match: :first

    fill_in "Housing", with: @expenditure_on_urban_development.Housing
    fill_in "Indicator", with: @expenditure_on_urban_development.Indicator
    fill_in "Total", with: @expenditure_on_urban_development.Total
    fill_in "Urban Development", with: @expenditure_on_urban_development.Urban_Development
    fill_in "Year", with: @expenditure_on_urban_development.Year
    click_on "Update Expenditure on urban development"

    assert_text "Expenditure on urban development was successfully updated"
    click_on "Back"
  end

  test "destroying a Expenditure on urban development" do
    visit expenditure_on_urban_developments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expenditure on urban development was successfully destroyed"
  end
end
