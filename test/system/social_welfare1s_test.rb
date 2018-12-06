require "application_system_test_case"

class SocialWelfare1sTest < ApplicationSystemTestCase
  setup do
    @social_welfare1 = social_welfare1s(:one)
  end

  test "visiting the index" do
    visit social_welfare1s_url
    assert_selector "h1", text: "Social Welfare1s"
  end

  test "creating a Social welfare1" do
    visit social_welfare1s_url
    click_on "New Social Welfare1"

    fill_in "Bank Loan", with: @social_welfare1.Bank_Loan
    fill_in "Margin Money", with: @social_welfare1.Margin_Money
    fill_in "Number Of Beneficiaries", with: @social_welfare1.Number_of_Beneficiaries
    fill_in "Scheme", with: @social_welfare1.Scheme
    fill_in "Subsidy", with: @social_welfare1.Subsidy
    fill_in "Term Loan", with: @social_welfare1.Term_Loan
    fill_in "Total", with: @social_welfare1.Total
    click_on "Create Social welfare1"

    assert_text "Social welfare1 was successfully created"
    click_on "Back"
  end

  test "updating a Social welfare1" do
    visit social_welfare1s_url
    click_on "Edit", match: :first

    fill_in "Bank Loan", with: @social_welfare1.Bank_Loan
    fill_in "Margin Money", with: @social_welfare1.Margin_Money
    fill_in "Number Of Beneficiaries", with: @social_welfare1.Number_of_Beneficiaries
    fill_in "Scheme", with: @social_welfare1.Scheme
    fill_in "Subsidy", with: @social_welfare1.Subsidy
    fill_in "Term Loan", with: @social_welfare1.Term_Loan
    fill_in "Total", with: @social_welfare1.Total
    click_on "Update Social welfare1"

    assert_text "Social welfare1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Social welfare1" do
    visit social_welfare1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Social welfare1 was successfully destroyed"
  end
end
