require "application_system_test_case"

class RevenueAccount4sTest < ApplicationSystemTestCase
  setup do
    @revenue_account4 = revenue_account4s(:one)
  end

  test "visiting the index" do
    visit revenue_account4s_url
    assert_selector "h1", text: "Revenue Account4s"
  end

  test "creating a Revenue account4" do
    visit revenue_account4s_url
    click_on "New Revenue Account4"

    fill_in "Amount", with: @revenue_account4.Amount
    fill_in "Revenue", with: @revenue_account4.Revenue
    fill_in "Year", with: @revenue_account4.Year
    click_on "Create Revenue account4"

    assert_text "Revenue account4 was successfully created"
    click_on "Back"
  end

  test "updating a Revenue account4" do
    visit revenue_account4s_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @revenue_account4.Amount
    fill_in "Revenue", with: @revenue_account4.Revenue
    fill_in "Year", with: @revenue_account4.Year
    click_on "Update Revenue account4"

    assert_text "Revenue account4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Revenue account4" do
    visit revenue_account4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Revenue account4 was successfully destroyed"
  end
end
