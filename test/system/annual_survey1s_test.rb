require "application_system_test_case"

class AnnualSurvey1sTest < ApplicationSystemTestCase
  setup do
    @annual_survey1 = annual_survey1s(:one)
  end

  test "visiting the index" do
    visit annual_survey1s_url
    assert_selector "h1", text: "Annual Survey1s"
  end

  test "creating a Annual survey1" do
    visit annual_survey1s_url
    click_on "New Annual Survey1"

    fill_in "Annual Growth Rate", with: @annual_survey1.Annual_Growth_Rate
    fill_in "Sector", with: @annual_survey1.Sector
    fill_in "Year", with: @annual_survey1.Year
    click_on "Create Annual survey1"

    assert_text "Annual survey1 was successfully created"
    click_on "Back"
  end

  test "updating a Annual survey1" do
    visit annual_survey1s_url
    click_on "Edit", match: :first

    fill_in "Annual Growth Rate", with: @annual_survey1.Annual_Growth_Rate
    fill_in "Sector", with: @annual_survey1.Sector
    fill_in "Year", with: @annual_survey1.Year
    click_on "Update Annual survey1"

    assert_text "Annual survey1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Annual survey1" do
    visit annual_survey1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Annual survey1 was successfully destroyed"
  end
end
