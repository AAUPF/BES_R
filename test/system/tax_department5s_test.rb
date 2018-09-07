require "application_system_test_case"

class TaxDepartment5sTest < ApplicationSystemTestCase
  setup do
    @tax_department5 = tax_department5s(:one)
  end

  test "visiting the index" do
    visit tax_department5s_url
    assert_selector "h1", text: "Tax Department5s"
  end

  test "creating a Tax department5" do
    visit tax_department5s_url
    click_on "New Tax Department5"

    fill_in "Districts", with: @tax_department5.Districts
    fill_in "Number Of Document", with: @tax_department5.Number_of_Document
    fill_in "Percentage Receipt Against Target", with: @tax_department5.Percentage_receipt_against_target
    fill_in "Receipt Per Document", with: @tax_department5.Receipt_per_Document
    fill_in "Target", with: @tax_department5.Target
    fill_in "Total Receipt", with: @tax_department5.Total_Receipt
    click_on "Create Tax department5"

    assert_text "Tax department5 was successfully created"
    click_on "Back"
  end

  test "updating a Tax department5" do
    visit tax_department5s_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @tax_department5.Districts
    fill_in "Number Of Document", with: @tax_department5.Number_of_Document
    fill_in "Percentage Receipt Against Target", with: @tax_department5.Percentage_receipt_against_target
    fill_in "Receipt Per Document", with: @tax_department5.Receipt_per_Document
    fill_in "Target", with: @tax_department5.Target
    fill_in "Total Receipt", with: @tax_department5.Total_Receipt
    click_on "Update Tax department5"

    assert_text "Tax department5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Tax department5" do
    visit tax_department5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tax department5 was successfully destroyed"
  end
end
