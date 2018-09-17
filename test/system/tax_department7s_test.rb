require "application_system_test_case"

class TaxDepartment7sTest < ApplicationSystemTestCase
  setup do
    @tax_department7 = tax_department7s(:one)
  end

  test "visiting the index" do
    visit tax_department7s_url
    assert_selector "h1", text: "Tax Department7s"
  end

  test "creating a Tax department7" do
    visit tax_department7s_url
    click_on "New Tax Department7"

    fill_in "Adv Tax", with: @tax_department7.ADV_Tax
    fill_in "Cst", with: @tax_department7.CST
    fill_in "Districts", with: @tax_department7.Districts
    fill_in "Ed", with: @tax_department7.ED
    fill_in "Ent Tax", with: @tax_department7.ENT_Tax
    fill_in "Entry Tax", with: @tax_department7.Entry_Tax
    fill_in "Lux Tax", with: @tax_department7.LUX_Tax
    fill_in "Professional Tax", with: @tax_department7.Professional_Tax
    fill_in "Target", with: @tax_department7.Target
    fill_in "Total", with: @tax_department7.Total
    fill_in "Vat", with: @tax_department7.VAT
    fill_in "Year", with: @tax_department7.Year
    click_on "Create Tax department7"

    assert_text "Tax department7 was successfully created"
    click_on "Back"
  end

  test "updating a Tax department7" do
    visit tax_department7s_url
    click_on "Edit", match: :first

    fill_in "Adv Tax", with: @tax_department7.ADV_Tax
    fill_in "Cst", with: @tax_department7.CST
    fill_in "Districts", with: @tax_department7.Districts
    fill_in "Ed", with: @tax_department7.ED
    fill_in "Ent Tax", with: @tax_department7.ENT_Tax
    fill_in "Entry Tax", with: @tax_department7.Entry_Tax
    fill_in "Lux Tax", with: @tax_department7.LUX_Tax
    fill_in "Professional Tax", with: @tax_department7.Professional_Tax
    fill_in "Target", with: @tax_department7.Target
    fill_in "Total", with: @tax_department7.Total
    fill_in "Vat", with: @tax_department7.VAT
    fill_in "Year", with: @tax_department7.Year
    click_on "Update Tax department7"

    assert_text "Tax department7 was successfully updated"
    click_on "Back"
  end

  test "destroying a Tax department7" do
    visit tax_department7s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tax department7 was successfully destroyed"
  end
end
