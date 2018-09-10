require "application_system_test_case"

class AnnualSurvey2sTest < ApplicationSystemTestCase
  setup do
    @annual_survey2 = annual_survey2s(:one)
  end

  test "visiting the index" do
    visit annual_survey2s_url
    assert_selector "h1", text: "Annual Survey2s"
  end

  test "creating a Annual survey2" do
    visit annual_survey2s_url
    click_on "New Annual Survey2"

    fill_in "Cotribution", with: @annual_survey2.Cotribution
    fill_in "State", with: @annual_survey2.State
    fill_in "Year", with: @annual_survey2.Year
    click_on "Create Annual survey2"

    assert_text "Annual survey2 was successfully created"
    click_on "Back"
  end

  test "updating a Annual survey2" do
    visit annual_survey2s_url
    click_on "Edit", match: :first

    fill_in "Cotribution", with: @annual_survey2.Cotribution
    fill_in "State", with: @annual_survey2.State
    fill_in "Year", with: @annual_survey2.Year
    click_on "Update Annual survey2"

    assert_text "Annual survey2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Annual survey2" do
    visit annual_survey2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Annual survey2 was successfully destroyed"
  end
end
