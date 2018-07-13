require "application_system_test_case"

class Rainfall1sTest < ApplicationSystemTestCase
  setup do
    @rainfall1 = rainfall1s(:one)
  end

  test "visiting the index" do
    visit rainfall1s_url
    assert_selector "h1", text: "Rainfall1s"
  end

  test "creating a Rainfall1" do
    visit rainfall1s_url
    click_on "New Rainfall1"

    fill_in "Hot Weather Rain", with: @rainfall1.Hot_Weather_Rain
    fill_in "Northwest Monsoon", with: @rainfall1.Northwest_Monsoon
    fill_in "Southwest Monsoon", with: @rainfall1.Southwest_Monsoon
    fill_in "Total", with: @rainfall1.Total
    fill_in "Winter Rain", with: @rainfall1.Winter_Rain
    fill_in "Year", with: @rainfall1.Year
    click_on "Create Rainfall1"

    assert_text "Rainfall1 was successfully created"
    click_on "Back"
  end

  test "updating a Rainfall1" do
    visit rainfall1s_url
    click_on "Edit", match: :first

    fill_in "Hot Weather Rain", with: @rainfall1.Hot_Weather_Rain
    fill_in "Northwest Monsoon", with: @rainfall1.Northwest_Monsoon
    fill_in "Southwest Monsoon", with: @rainfall1.Southwest_Monsoon
    fill_in "Total", with: @rainfall1.Total
    fill_in "Winter Rain", with: @rainfall1.Winter_Rain
    fill_in "Year", with: @rainfall1.Year
    click_on "Update Rainfall1"

    assert_text "Rainfall1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Rainfall1" do
    visit rainfall1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rainfall1 was successfully destroyed"
  end
end
