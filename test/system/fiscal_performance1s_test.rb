require "application_system_test_case"

class FiscalPerformance1sTest < ApplicationSystemTestCase
  setup do
    @fiscal_performance1 = fiscal_performance1s(:one)
  end

  test "visiting the index" do
    visit fiscal_performance1s_url
    assert_selector "h1", text: "Fiscal Performance1s"
  end

  test "creating a Fiscal performance1" do
    visit fiscal_performance1s_url
    click_on "New Fiscal Performance1"

    fill_in "Capital Outlay Gfd Percentage", with: @fiscal_performance1.Capital_Outlay_GFD_Percentage
    fill_in "Debt Servicing Gross Transfers Percentage", with: @fiscal_performance1.Debt_Servicing_Gross_Transfers_Percentage
    fill_in "Gross Transfers Aggregate Disbursements Percentage", with: @fiscal_performance1.Gross_Transfers_Aggregate_Disbursements_Percentage
    fill_in "Interest Payments Revenue Exp Percentage", with: @fiscal_performance1.Interest_Payments_Revenue_Exp_Percentage
    fill_in "Non Dev Exp Agg Disbursements Percentage", with: @fiscal_performance1.Non_Dev_Exp_Agg_Disbursements_Percentage
    fill_in "Non Dev Exp Revenue Receipts Percentage", with: @fiscal_performance1.Non_Dev_Exp_Revenue_Receipts_Percentage
    fill_in "Revenue Deficit Gfd Percentage", with: @fiscal_performance1.Revenue_Deficit_GFD_Percentage
    fill_in "State", with: @fiscal_performance1.State
    fill_in "State Own Revenue Revenue Exp Percentage", with: @fiscal_performance1.State_Own_Revenue_Revenue_Exp_Percentage
    fill_in "Year", with: @fiscal_performance1.Year
    click_on "Create Fiscal performance1"

    assert_text "Fiscal performance1 was successfully created"
    click_on "Back"
  end

  test "updating a Fiscal performance1" do
    visit fiscal_performance1s_url
    click_on "Edit", match: :first

    fill_in "Capital Outlay Gfd Percentage", with: @fiscal_performance1.Capital_Outlay_GFD_Percentage
    fill_in "Debt Servicing Gross Transfers Percentage", with: @fiscal_performance1.Debt_Servicing_Gross_Transfers_Percentage
    fill_in "Gross Transfers Aggregate Disbursements Percentage", with: @fiscal_performance1.Gross_Transfers_Aggregate_Disbursements_Percentage
    fill_in "Interest Payments Revenue Exp Percentage", with: @fiscal_performance1.Interest_Payments_Revenue_Exp_Percentage
    fill_in "Non Dev Exp Agg Disbursements Percentage", with: @fiscal_performance1.Non_Dev_Exp_Agg_Disbursements_Percentage
    fill_in "Non Dev Exp Revenue Receipts Percentage", with: @fiscal_performance1.Non_Dev_Exp_Revenue_Receipts_Percentage
    fill_in "Revenue Deficit Gfd Percentage", with: @fiscal_performance1.Revenue_Deficit_GFD_Percentage
    fill_in "State", with: @fiscal_performance1.State
    fill_in "State Own Revenue Revenue Exp Percentage", with: @fiscal_performance1.State_Own_Revenue_Revenue_Exp_Percentage
    fill_in "Year", with: @fiscal_performance1.Year
    click_on "Update Fiscal performance1"

    assert_text "Fiscal performance1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Fiscal performance1" do
    visit fiscal_performance1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fiscal performance1 was successfully destroyed"
  end
end
