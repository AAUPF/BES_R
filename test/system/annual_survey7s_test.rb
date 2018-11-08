require "application_system_test_case"

class AnnualSurvey7sTest < ApplicationSystemTestCase
  setup do
    @annual_survey7 = annual_survey7s(:one)
  end

  test "visiting the index" do
    visit annual_survey7s_url
    assert_selector "h1", text: "Annual Survey7s"
  end

  test "creating a Annual survey7" do
    visit annual_survey7s_url
    click_on "New Annual Survey7"

    fill_in "Bihar", with: @annual_survey7.Bihar
    fill_in "India", with: @annual_survey7.India
    fill_in "Indicator", with: @annual_survey7.Indicator
    fill_in "Indicator1", with: @annual_survey7.Indicator1
    fill_in "Industrial Group", with: @annual_survey7.Industrial_Group
    click_on "Create Annual survey7"

    assert_text "Annual survey7 was successfully created"
    click_on "Back"
  end

  test "updating a Annual survey7" do
    visit annual_survey7s_url
    click_on "Edit", match: :first

    fill_in "Bihar", with: @annual_survey7.Bihar
    fill_in "India", with: @annual_survey7.India
    fill_in "Indicator", with: @annual_survey7.Indicator
    fill_in "Indicator1", with: @annual_survey7.Indicator1
    fill_in "Industrial Group", with: @annual_survey7.Industrial_Group
    click_on "Update Annual survey7"

    assert_text "Annual survey7 was successfully updated"
    click_on "Back"
  end

  test "destroying a Annual survey7" do
    visit annual_survey7s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Annual survey7 was successfully destroyed"
  end
end
