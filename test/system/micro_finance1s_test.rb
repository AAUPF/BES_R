require "application_system_test_case"

class MicroFinance1sTest < ApplicationSystemTestCase
  setup do
    @micro_finance1 = micro_finance1s(:one)
  end

  test "visiting the index" do
    visit micro_finance1s_url
    assert_selector "h1", text: "Micro Finance1s"
  end

  test "creating a Micro finance1" do
    visit micro_finance1s_url
    click_on "New Micro Finance1"

    fill_in "Bank Loans Disbursed During The Year", with: @micro_finance1.Bank_loans_disbursed_during_the_year
    fill_in "Number Of Shgs With Bank Linkage", with: @micro_finance1.Number_of_SHGs_with_Bank_Linkage
    fill_in "Savings Of Shgs With Banks", with: @micro_finance1.Savings_of_SHGs_with_Banks
    fill_in "State", with: @micro_finance1.State
    click_on "Create Micro finance1"

    assert_text "Micro finance1 was successfully created"
    click_on "Back"
  end

  test "updating a Micro finance1" do
    visit micro_finance1s_url
    click_on "Edit", match: :first

    fill_in "Bank Loans Disbursed During The Year", with: @micro_finance1.Bank_loans_disbursed_during_the_year
    fill_in "Number Of Shgs With Bank Linkage", with: @micro_finance1.Number_of_SHGs_with_Bank_Linkage
    fill_in "Savings Of Shgs With Banks", with: @micro_finance1.Savings_of_SHGs_with_Banks
    fill_in "State", with: @micro_finance1.State
    click_on "Update Micro finance1"

    assert_text "Micro finance1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Micro finance1" do
    visit micro_finance1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Micro finance1 was successfully destroyed"
  end
end
