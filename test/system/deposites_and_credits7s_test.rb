require "application_system_test_case"

class DepositesAndCredits7sTest < ApplicationSystemTestCase
  setup do
    @deposites_and_credits7 = deposites_and_credits7s(:one)
  end

  test "visiting the index" do
    visit deposites_and_credits7s_url
    assert_selector "h1", text: "Deposites And Credits7s"
  end

  test "creating a Deposites and credits7" do
    visit deposites_and_credits7s_url
    click_on "New Deposites And Credits7"

    fill_in "Advance", with: @deposites_and_credits7.Advance
    fill_in "Banks", with: @deposites_and_credits7.Banks
    fill_in "Cd Ratio", with: @deposites_and_credits7.CD_Ratio
    fill_in "Deposit", with: @deposites_and_credits7.Deposit
    fill_in "Indicator", with: @deposites_and_credits7.Indicator
    fill_in "Number Of Branches", with: @deposites_and_credits7.Number_of_branches
    click_on "Create Deposites and credits7"

    assert_text "Deposites and credits7 was successfully created"
    click_on "Back"
  end

  test "updating a Deposites and credits7" do
    visit deposites_and_credits7s_url
    click_on "Edit", match: :first

    fill_in "Advance", with: @deposites_and_credits7.Advance
    fill_in "Banks", with: @deposites_and_credits7.Banks
    fill_in "Cd Ratio", with: @deposites_and_credits7.CD_Ratio
    fill_in "Deposit", with: @deposites_and_credits7.Deposit
    fill_in "Indicator", with: @deposites_and_credits7.Indicator
    fill_in "Number Of Branches", with: @deposites_and_credits7.Number_of_branches
    click_on "Update Deposites and credits7"

    assert_text "Deposites and credits7 was successfully updated"
    click_on "Back"
  end

  test "destroying a Deposites and credits7" do
    visit deposites_and_credits7s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deposites and credits7 was successfully destroyed"
  end
end
