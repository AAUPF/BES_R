require "application_system_test_case"

class DebtManagement3sTest < ApplicationSystemTestCase
  setup do
    @debt_management3 = debt_management3s(:one)
  end

  test "visiting the index" do
    visit debt_management3s_url
    assert_selector "h1", text: "Debt Management3s"
  end

  test "creating a Debt management3" do
    visit debt_management3s_url
    click_on "New Debt Management3"

    fill_in "Amounts", with: @debt_management3.Amounts
    fill_in "Public Debt Repayment Liabilities", with: @debt_management3.Public_Debt_Repayment_Liabilities
    fill_in "Year", with: @debt_management3.Year
    click_on "Create Debt management3"

    assert_text "Debt management3 was successfully created"
    click_on "Back"
  end

  test "updating a Debt management3" do
    visit debt_management3s_url
    click_on "Edit", match: :first

    fill_in "Amounts", with: @debt_management3.Amounts
    fill_in "Public Debt Repayment Liabilities", with: @debt_management3.Public_Debt_Repayment_Liabilities
    fill_in "Year", with: @debt_management3.Year
    click_on "Update Debt management3"

    assert_text "Debt management3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Debt management3" do
    visit debt_management3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Debt management3 was successfully destroyed"
  end
end
