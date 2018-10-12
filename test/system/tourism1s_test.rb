require "application_system_test_case"

class Tourism1sTest < ApplicationSystemTestCase
  setup do
    @tourism1 = tourism1s(:one)
  end

  test "visiting the index" do
    visit tourism1s_url
    assert_selector "h1", text: "Tourism1s"
  end

  test "creating a Tourism1" do
    visit tourism1s_url
    click_on "New Tourism1"

    fill_in "Budget Estimate", with: @tourism1.Budget_Estimate
    fill_in "Expenditure", with: @tourism1.Expenditure
    fill_in "Expenditure As Percentage Of Budget", with: @tourism1.Expenditure_as_percentage_of_Budget
    fill_in "Year", with: @tourism1.Year
    click_on "Create Tourism1"

    assert_text "Tourism1 was successfully created"
    click_on "Back"
  end

  test "updating a Tourism1" do
    visit tourism1s_url
    click_on "Edit", match: :first

    fill_in "Budget Estimate", with: @tourism1.Budget_Estimate
    fill_in "Expenditure", with: @tourism1.Expenditure
    fill_in "Expenditure As Percentage Of Budget", with: @tourism1.Expenditure_as_percentage_of_Budget
    fill_in "Year", with: @tourism1.Year
    click_on "Update Tourism1"

    assert_text "Tourism1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Tourism1" do
    visit tourism1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tourism1 was successfully destroyed"
  end
end
