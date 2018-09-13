require "application_system_test_case"

class TaxDepartment6sTest < ApplicationSystemTestCase
  setup do
    @tax_department6 = tax_department6s(:one)
  end

  test "visiting the index" do
    visit tax_department6s_url
    assert_selector "h1", text: "Tax Department6s"
  end

  test "creating a Tax department6" do
    visit tax_department6s_url
    click_on "New Tax Department6"

    fill_in "Districts", with: @tax_department6.Districts
    fill_in "Number Of Document", with: @tax_department6.Number_of_Document
    fill_in "Registration Fees", with: @tax_department6.Registration_Fees
    fill_in "Stamp Fee", with: @tax_department6.Stamp_Fee
    fill_in "Target", with: @tax_department6.Target
    fill_in "Total Receipt", with: @tax_department6.Total_Receipt
    fill_in "Year", with: @tax_department6.Year
    click_on "Create Tax department6"

    assert_text "Tax department6 was successfully created"
    click_on "Back"
  end

  test "updating a Tax department6" do
    visit tax_department6s_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @tax_department6.Districts
    fill_in "Number Of Document", with: @tax_department6.Number_of_Document
    fill_in "Registration Fees", with: @tax_department6.Registration_Fees
    fill_in "Stamp Fee", with: @tax_department6.Stamp_Fee
    fill_in "Target", with: @tax_department6.Target
    fill_in "Total Receipt", with: @tax_department6.Total_Receipt
    fill_in "Year", with: @tax_department6.Year
    click_on "Update Tax department6"

    assert_text "Tax department6 was successfully updated"
    click_on "Back"
  end

  test "destroying a Tax department6" do
    visit tax_department6s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tax department6 was successfully destroyed"
  end
end
