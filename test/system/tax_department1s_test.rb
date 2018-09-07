require "application_system_test_case"

class TaxDepartment1sTest < ApplicationSystemTestCase
  setup do
    @tax_department1 = tax_department1s(:one)
  end

  test "visiting the index" do
    visit tax_department1s_url
    assert_selector "h1", text: "Tax Department1s"
  end

  test "creating a Tax department1" do
    visit tax_department1s_url
    click_on "New Tax Department1"

    fill_in "Adv", with: @tax_department1.ADV
    fill_in "Bst/Vat", with: @tax_department1.BST/VAT
    fill_in "Cst", with: @tax_department1.CST
    fill_in "Ed", with: @tax_department1.ED
    fill_in "Ent", with: @tax_department1.ENT
    fill_in "Et", with: @tax_department1.ET
    fill_in "Hlt", with: @tax_department1.HLT
    fill_in "Pt", with: @tax_department1.PT
    fill_in "Total", with: @tax_department1.Total
    fill_in "Year", with: @tax_department1.Year
    click_on "Create Tax department1"

    assert_text "Tax department1 was successfully created"
    click_on "Back"
  end

  test "updating a Tax department1" do
    visit tax_department1s_url
    click_on "Edit", match: :first

    fill_in "Adv", with: @tax_department1.ADV
    fill_in "Bst/Vat", with: @tax_department1.BST/VAT
    fill_in "Cst", with: @tax_department1.CST
    fill_in "Ed", with: @tax_department1.ED
    fill_in "Ent", with: @tax_department1.ENT
    fill_in "Et", with: @tax_department1.ET
    fill_in "Hlt", with: @tax_department1.HLT
    fill_in "Pt", with: @tax_department1.PT
    fill_in "Total", with: @tax_department1.Total
    fill_in "Year", with: @tax_department1.Year
    click_on "Update Tax department1"

    assert_text "Tax department1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Tax department1" do
    visit tax_department1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tax department1 was successfully destroyed"
  end
end
