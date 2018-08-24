require "application_system_test_case"

class RevenueAccount3sTest < ApplicationSystemTestCase
  setup do
    @revenue_account3 = revenue_account3s(:one)
  end

  test "visiting the index" do
    visit revenue_account3s_url
    assert_selector "h1", text: "Revenue Account3s"
  end

  test "creating a Revenue account3" do
    visit revenue_account3s_url
    click_on "New Revenue Account3"

    fill_in "Amount", with: @revenue_account3.Amount
    fill_in "Interest Payment And Receipt", with: @revenue_account3.Interest_Payment_and_Receipt
    fill_in "Year", with: @revenue_account3.Year
    click_on "Create Revenue account3"

    assert_text "Revenue account3 was successfully created"
    click_on "Back"
  end

  test "updating a Revenue account3" do
    visit revenue_account3s_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @revenue_account3.Amount
    fill_in "Interest Payment And Receipt", with: @revenue_account3.Interest_Payment_and_Receipt
    fill_in "Year", with: @revenue_account3.Year
    click_on "Update Revenue account3"

    assert_text "Revenue account3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Revenue account3" do
    visit revenue_account3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Revenue account3 was successfully destroyed"
  end
end
