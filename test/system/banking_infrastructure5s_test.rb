require "application_system_test_case"

class BankingInfrastructure5sTest < ApplicationSystemTestCase
  setup do
    @banking_infrastructure5 = banking_infrastructure5s(:one)
  end

  test "visiting the index" do
    visit banking_infrastructure5s_url
    assert_selector "h1", text: "Banking Infrastructure5s"
  end

  test "creating a Banking infrastructure5" do
    visit banking_infrastructure5s_url
    click_on "New Banking Infrastructure5"

    fill_in "Current Amount", with: @banking_infrastructure5.Current_Amount
    fill_in "No Of Branches", with: @banking_infrastructure5.No_of_Branches
    fill_in "No Of Current Accounts", with: @banking_infrastructure5.No_of_Current_Accounts
    fill_in "No Of Savings Accounts", with: @banking_infrastructure5.No_of_Savings_Accounts
    fill_in "No Of Term Accounts", with: @banking_infrastructure5.No_of_Term_Accounts
    fill_in "No Of Total Accounts", with: @banking_infrastructure5.No_of_Total_Accounts
    fill_in "Savings Amount", with: @banking_infrastructure5.Savings_Amount
    fill_in "State", with: @banking_infrastructure5.State
    fill_in "Term Amount", with: @banking_infrastructure5.Term_Amount
    fill_in "Total Amount", with: @banking_infrastructure5.Total_Amount
    click_on "Create Banking infrastructure5"

    assert_text "Banking infrastructure5 was successfully created"
    click_on "Back"
  end

  test "updating a Banking infrastructure5" do
    visit banking_infrastructure5s_url
    click_on "Edit", match: :first

    fill_in "Current Amount", with: @banking_infrastructure5.Current_Amount
    fill_in "No Of Branches", with: @banking_infrastructure5.No_of_Branches
    fill_in "No Of Current Accounts", with: @banking_infrastructure5.No_of_Current_Accounts
    fill_in "No Of Savings Accounts", with: @banking_infrastructure5.No_of_Savings_Accounts
    fill_in "No Of Term Accounts", with: @banking_infrastructure5.No_of_Term_Accounts
    fill_in "No Of Total Accounts", with: @banking_infrastructure5.No_of_Total_Accounts
    fill_in "Savings Amount", with: @banking_infrastructure5.Savings_Amount
    fill_in "State", with: @banking_infrastructure5.State
    fill_in "Term Amount", with: @banking_infrastructure5.Term_Amount
    fill_in "Total Amount", with: @banking_infrastructure5.Total_Amount
    click_on "Update Banking infrastructure5"

    assert_text "Banking infrastructure5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Banking infrastructure5" do
    visit banking_infrastructure5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Banking infrastructure5 was successfully destroyed"
  end
end
