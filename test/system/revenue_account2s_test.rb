require "application_system_test_case"

class RevenueAccount2sTest < ApplicationSystemTestCase
  setup do
    @revenue_account2 = revenue_account2s(:one)
  end

  test "visiting the index" do
    visit revenue_account2s_url
    assert_selector "h1", text: "Revenue Account2s"
  end

  test "creating a Revenue account2" do
    visit revenue_account2s_url
    click_on "New Revenue Account2"

    fill_in "Amount", with: @revenue_account2.Amount
    fill_in "Expenditure Pattern", with: @revenue_account2.Expenditure_Pattern
    fill_in "Year", with: @revenue_account2.Year
    click_on "Create Revenue account2"

    assert_text "Revenue account2 was successfully created"
    click_on "Back"
  end

  test "updating a Revenue account2" do
    visit revenue_account2s_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @revenue_account2.Amount
    fill_in "Expenditure Pattern", with: @revenue_account2.Expenditure_Pattern
    fill_in "Year", with: @revenue_account2.Year
    click_on "Update Revenue account2"

    assert_text "Revenue account2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Revenue account2" do
    visit revenue_account2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Revenue account2 was successfully destroyed"
  end
end
