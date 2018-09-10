require "application_system_test_case"

class AnnualSurvey5sTest < ApplicationSystemTestCase
  setup do
    @annual_survey5 = annual_survey5s(:one)
  end

  test "visiting the index" do
    visit annual_survey5s_url
    assert_selector "h1", text: "Annual Survey5s"
  end

  test "creating a Annual survey5" do
    visit annual_survey5s_url
    click_on "New Annual Survey5"

    fill_in "Bihar", with: @annual_survey5.Bihar
    fill_in "Characteristics", with: @annual_survey5.Characteristics
    fill_in "India", with: @annual_survey5.India
    fill_in "Year", with: @annual_survey5.Year
    click_on "Create Annual survey5"

    assert_text "Annual survey5 was successfully created"
    click_on "Back"
  end

  test "updating a Annual survey5" do
    visit annual_survey5s_url
    click_on "Edit", match: :first

    fill_in "Bihar", with: @annual_survey5.Bihar
    fill_in "Characteristics", with: @annual_survey5.Characteristics
    fill_in "India", with: @annual_survey5.India
    fill_in "Year", with: @annual_survey5.Year
    click_on "Update Annual survey5"

    assert_text "Annual survey5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Annual survey5" do
    visit annual_survey5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Annual survey5 was successfully destroyed"
  end
end
