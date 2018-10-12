require "application_system_test_case"

class AnnualSurvey4sTest < ApplicationSystemTestCase
  setup do
    @annual_survey4 = annual_survey4s(:one)
  end

  test "visiting the index" do
    visit annual_survey4s_url
    assert_selector "h1", text: "Annual Survey4s"
  end

  test "creating a Annual survey4" do
    visit annual_survey4s_url
    click_on "New Annual Survey4"

    fill_in "Bihar", with: @annual_survey4.Bihar
    fill_in "India", with: @annual_survey4.India
    fill_in "Indicator", with: @annual_survey4.Indicator
    fill_in "Year", with: @annual_survey4.Year
    click_on "Create Annual survey4"

    assert_text "Annual survey4 was successfully created"
    click_on "Back"
  end

  test "updating a Annual survey4" do
    visit annual_survey4s_url
    click_on "Edit", match: :first

    fill_in "Bihar", with: @annual_survey4.Bihar
    fill_in "India", with: @annual_survey4.India
    fill_in "Indicator", with: @annual_survey4.Indicator
    fill_in "Year", with: @annual_survey4.Year
    click_on "Update Annual survey4"

    assert_text "Annual survey4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Annual survey4" do
    visit annual_survey4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Annual survey4 was successfully destroyed"
  end
end
