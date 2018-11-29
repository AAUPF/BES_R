require "application_system_test_case"

class FinancialInstitutions1sTest < ApplicationSystemTestCase
  setup do
    @financial_institutions1 = financial_institutions1s(:one)
  end

  test "visiting the index" do
    visit financial_institutions1s_url
    assert_selector "h1", text: "Financial Institutions1s"
  end

  test "creating a Financial institutions1" do
    visit financial_institutions1s_url
    click_on "New Financial Institutions1"

    fill_in "Crop Loan Refinance", with: @financial_institutions1.Crop_Loan_Refinance
    fill_in "Investment Credit Refinancing", with: @financial_institutions1.Investment_Credit_Refinancing
    fill_in "Ridf Plus Wif Plus Fpf Loan Sanctioned", with: @financial_institutions1.RIDF_plus_WIF_plus_FPF_Loan_sanctioned
    fill_in "Total Financial Support", with: @financial_institutions1.Total_Financial_Support
    fill_in "Year", with: @financial_institutions1.Year
    click_on "Create Financial institutions1"

    assert_text "Financial institutions1 was successfully created"
    click_on "Back"
  end

  test "updating a Financial institutions1" do
    visit financial_institutions1s_url
    click_on "Edit", match: :first

    fill_in "Crop Loan Refinance", with: @financial_institutions1.Crop_Loan_Refinance
    fill_in "Investment Credit Refinancing", with: @financial_institutions1.Investment_Credit_Refinancing
    fill_in "Ridf Plus Wif Plus Fpf Loan Sanctioned", with: @financial_institutions1.RIDF_plus_WIF_plus_FPF_Loan_sanctioned
    fill_in "Total Financial Support", with: @financial_institutions1.Total_Financial_Support
    fill_in "Year", with: @financial_institutions1.Year
    click_on "Update Financial institutions1"

    assert_text "Financial institutions1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Financial institutions1" do
    visit financial_institutions1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Financial institutions1 was successfully destroyed"
  end
end
