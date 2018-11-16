require "application_system_test_case"

class Poverty2sTest < ApplicationSystemTestCase
  setup do
    @poverty2 = poverty2s(:one)
  end

  test "visiting the index" do
    visit poverty2s_url
    assert_selector "h1", text: "Poverty2s"
  end

  test "creating a Poverty2" do
    visit poverty2s_url
    click_on "New Poverty2"

    fill_in "Population Below Poverty Line In Percentages", with: @poverty2.Population_below_poverty_line_in_Percentages
    fill_in "Rural Poverty", with: @poverty2.Rural_poverty
    fill_in "Total Poverty", with: @poverty2.Total_poverty
    fill_in "Urban Poverty", with: @poverty2.Urban_poverty
    click_on "Create Poverty2"

    assert_text "Poverty2 was successfully created"
    click_on "Back"
  end

  test "updating a Poverty2" do
    visit poverty2s_url
    click_on "Edit", match: :first

    fill_in "Population Below Poverty Line In Percentages", with: @poverty2.Population_below_poverty_line_in_Percentages
    fill_in "Rural Poverty", with: @poverty2.Rural_poverty
    fill_in "Total Poverty", with: @poverty2.Total_poverty
    fill_in "Urban Poverty", with: @poverty2.Urban_poverty
    click_on "Update Poverty2"

    assert_text "Poverty2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Poverty2" do
    visit poverty2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poverty2 was successfully destroyed"
  end
end
