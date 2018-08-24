require "application_system_test_case"

class RevenueAccount5sTest < ApplicationSystemTestCase
  setup do
    @revenue_account5 = revenue_account5s(:one)
  end

  test "visiting the index" do
    visit revenue_account5s_url
    assert_selector "h1", text: "Revenue Account5s"
  end

  test "creating a Revenue account5" do
    visit revenue_account5s_url
    click_on "New Revenue Account5"

    fill_in "Amount", with: @revenue_account5.Amount
    fill_in "Transfer Of Resources", with: @revenue_account5.Transfer_of_Resources
    fill_in "Year", with: @revenue_account5.Year
    click_on "Create Revenue account5"

    assert_text "Revenue account5 was successfully created"
    click_on "Back"
  end

  test "updating a Revenue account5" do
    visit revenue_account5s_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @revenue_account5.Amount
    fill_in "Transfer Of Resources", with: @revenue_account5.Transfer_of_Resources
    fill_in "Year", with: @revenue_account5.Year
    click_on "Update Revenue account5"

    assert_text "Revenue account5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Revenue account5" do
    visit revenue_account5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Revenue account5 was successfully destroyed"
  end
end
