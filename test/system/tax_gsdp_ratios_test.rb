require "application_system_test_case"

class TaxGsdpRatiosTest < ApplicationSystemTestCase
  setup do
    @tax_gsdp_ratio = tax_gsdp_ratios(:one)
  end

  test "visiting the index" do
    visit tax_gsdp_ratios_url
    assert_selector "h1", text: "Tax Gsdp Ratios"
  end

  test "creating a Tax gsdp ratio" do
    visit tax_gsdp_ratios_url
    click_on "New Tax Gsdp Ratio"

    fill_in "Gsdp", with: @tax_gsdp_ratio.GSDP
    fill_in "Ratio Of Sot And Gsdp", with: @tax_gsdp_ratio.Ratio_of_SOT_and_GSDP
    fill_in "Ratio Of Sot And Rr", with: @tax_gsdp_ratio.Ratio_of_SOT_and_RR
    fill_in "Ratio Of Total Revenue And Gsdp", with: @tax_gsdp_ratio.Ratio_of_Total_Revenue_and_GSDP
    fill_in "Revenue Receipts", with: @tax_gsdp_ratio.Revenue_Receipts
    fill_in "State", with: @tax_gsdp_ratio.State
    fill_in "States Own Tax", with: @tax_gsdp_ratio.States_Own_Tax
    click_on "Create Tax gsdp ratio"

    assert_text "Tax gsdp ratio was successfully created"
    click_on "Back"
  end

  test "updating a Tax gsdp ratio" do
    visit tax_gsdp_ratios_url
    click_on "Edit", match: :first

    fill_in "Gsdp", with: @tax_gsdp_ratio.GSDP
    fill_in "Ratio Of Sot And Gsdp", with: @tax_gsdp_ratio.Ratio_of_SOT_and_GSDP
    fill_in "Ratio Of Sot And Rr", with: @tax_gsdp_ratio.Ratio_of_SOT_and_RR
    fill_in "Ratio Of Total Revenue And Gsdp", with: @tax_gsdp_ratio.Ratio_of_Total_Revenue_and_GSDP
    fill_in "Revenue Receipts", with: @tax_gsdp_ratio.Revenue_Receipts
    fill_in "State", with: @tax_gsdp_ratio.State
    fill_in "States Own Tax", with: @tax_gsdp_ratio.States_Own_Tax
    click_on "Update Tax gsdp ratio"

    assert_text "Tax gsdp ratio was successfully updated"
    click_on "Back"
  end

  test "destroying a Tax gsdp ratio" do
    visit tax_gsdp_ratios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tax gsdp ratio was successfully destroyed"
  end
end
