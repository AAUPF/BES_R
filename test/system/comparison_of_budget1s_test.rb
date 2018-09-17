require "application_system_test_case"

class ComparisonOfBudget1sTest < ApplicationSystemTestCase
  setup do
    @comparison_of_budget1 = comparison_of_budget1s(:one)
  end

  test "visiting the index" do
    visit comparison_of_budget1s_url
    assert_selector "h1", text: "Comparison Of Budget1s"
  end

  test "creating a Comparison of budget1" do
    visit comparison_of_budget1s_url
    click_on "New Comparison Of Budget1"

    fill_in "2016 17", with: @comparison_of_budget1.2016-17
    fill_in "2017 18 Be", with: @comparison_of_budget1.2017-18_BE
    fill_in "Indicator", with: @comparison_of_budget1.Indicator
    fill_in "Sector", with: @comparison_of_budget1.Sector
    fill_in "Sub Sector", with: @comparison_of_budget1.Sub_sector
    click_on "Create Comparison of budget1"

    assert_text "Comparison of budget1 was successfully created"
    click_on "Back"
  end

  test "updating a Comparison of budget1" do
    visit comparison_of_budget1s_url
    click_on "Edit", match: :first

    fill_in "2016 17", with: @comparison_of_budget1.2016-17
    fill_in "2017 18 Be", with: @comparison_of_budget1.2017-18_BE
    fill_in "Indicator", with: @comparison_of_budget1.Indicator
    fill_in "Sector", with: @comparison_of_budget1.Sector
    fill_in "Sub Sector", with: @comparison_of_budget1.Sub_sector
    click_on "Update Comparison of budget1"

    assert_text "Comparison of budget1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Comparison of budget1" do
    visit comparison_of_budget1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comparison of budget1 was successfully destroyed"
  end
end
