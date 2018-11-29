require "application_system_test_case"

class DepositesAndCredits3sTest < ApplicationSystemTestCase
  setup do
    @deposites_and_credits3 = deposites_and_credits3s(:one)
  end

  test "visiting the index" do
    visit deposites_and_credits3s_url
    assert_selector "h1", text: "Deposites And Credits3s"
  end

  test "creating a Deposites and credits3" do
    visit deposites_and_credits3s_url
    click_on "New Deposites And Credits3"

    fill_in "Area", with: @deposites_and_credits3.Area
    fill_in "Cd Ratio", with: @deposites_and_credits3.CD_Ratio
    fill_in "Credits", with: @deposites_and_credits3.Credits
    fill_in "Deposits", with: @deposites_and_credits3.Deposits
    fill_in "Icd Ratio", with: @deposites_and_credits3.ICD_Ratio
    fill_in "Indicator", with: @deposites_and_credits3.Indicator
    fill_in "Investment", with: @deposites_and_credits3.Investment
    click_on "Create Deposites and credits3"

    assert_text "Deposites and credits3 was successfully created"
    click_on "Back"
  end

  test "updating a Deposites and credits3" do
    visit deposites_and_credits3s_url
    click_on "Edit", match: :first

    fill_in "Area", with: @deposites_and_credits3.Area
    fill_in "Cd Ratio", with: @deposites_and_credits3.CD_Ratio
    fill_in "Credits", with: @deposites_and_credits3.Credits
    fill_in "Deposits", with: @deposites_and_credits3.Deposits
    fill_in "Icd Ratio", with: @deposites_and_credits3.ICD_Ratio
    fill_in "Indicator", with: @deposites_and_credits3.Indicator
    fill_in "Investment", with: @deposites_and_credits3.Investment
    click_on "Update Deposites and credits3"

    assert_text "Deposites and credits3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Deposites and credits3" do
    visit deposites_and_credits3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deposites and credits3 was successfully destroyed"
  end
end
