require "application_system_test_case"

class RevenueAccount1sTest < ApplicationSystemTestCase
  setup do
    @revenue_account1 = revenue_account1s(:one)
  end

  test "visiting the index" do
    visit revenue_account1s_url
    assert_selector "h1", text: "Revenue Account1s"
  end

  test "creating a Revenue account1" do
    visit revenue_account1s_url
    click_on "New Revenue Account1"

    fill_in "Amount", with: @revenue_account1.Amount
    fill_in "Revenue Account", with: @revenue_account1.Revenue_Account
    fill_in "Year", with: @revenue_account1.Year
    click_on "Create Revenue account1"

    assert_text "Revenue account1 was successfully created"
    click_on "Back"
  end

  test "updating a Revenue account1" do
    visit revenue_account1s_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @revenue_account1.Amount
    fill_in "Revenue Account", with: @revenue_account1.Revenue_Account
    fill_in "Year", with: @revenue_account1.Year
    click_on "Update Revenue account1"

    assert_text "Revenue account1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Revenue account1" do
    visit revenue_account1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Revenue account1 was successfully destroyed"
  end
end
