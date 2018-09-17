require "application_system_test_case"

class ComparisonOfBudgetsTest < ApplicationSystemTestCase
  setup do
    @comparison_of_budget = comparison_of_budgets(:one)
  end

  test "visiting the index" do
    visit comparison_of_budgets_url
    assert_selector "h1", text: "Comparison Of Budgets"
  end

  test "creating a Comparison of budget" do
    visit comparison_of_budgets_url
    click_on "New Comparison Of Budget"

    fill_in "2016 17", with: @comparison_of_budget.2016-17
    fill_in "2017 18 Be", with: @comparison_of_budget.2017-18_BE
    fill_in "Sector", with: @comparison_of_budget.Sector
    click_on "Create Comparison of budget"

    assert_text "Comparison of budget was successfully created"
    click_on "Back"
  end

  test "updating a Comparison of budget" do
    visit comparison_of_budgets_url
    click_on "Edit", match: :first

    fill_in "2016 17", with: @comparison_of_budget.2016-17
    fill_in "2017 18 Be", with: @comparison_of_budget.2017-18_BE
    fill_in "Sector", with: @comparison_of_budget.Sector
    click_on "Update Comparison of budget"

    assert_text "Comparison of budget was successfully updated"
    click_on "Back"
  end

  test "destroying a Comparison of budget" do
    visit comparison_of_budgets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comparison of budget was successfully destroyed"
  end
end
