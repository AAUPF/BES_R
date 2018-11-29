require "application_system_test_case"

class DepositesAndCredits2sTest < ApplicationSystemTestCase
  setup do
    @deposites_and_credits2 = deposites_and_credits2s(:one)
  end

  test "visiting the index" do
    visit deposites_and_credits2s_url
    assert_selector "h1", text: "Deposites And Credits2s"
  end

  test "creating a Deposites and credits2" do
    visit deposites_and_credits2s_url
    click_on "New Deposites And Credits2"

    fill_in "Cd Ratio", with: @deposites_and_credits2.CD_Ratio
    fill_in "Credit", with: @deposites_and_credits2.Credit
    fill_in "Deposit", with: @deposites_and_credits2.Deposit
    fill_in "Year", with: @deposites_and_credits2.Year
    fill_in "State", with: @deposites_and_credits2.state
    click_on "Create Deposites and credits2"

    assert_text "Deposites and credits2 was successfully created"
    click_on "Back"
  end

  test "updating a Deposites and credits2" do
    visit deposites_and_credits2s_url
    click_on "Edit", match: :first

    fill_in "Cd Ratio", with: @deposites_and_credits2.CD_Ratio
    fill_in "Credit", with: @deposites_and_credits2.Credit
    fill_in "Deposit", with: @deposites_and_credits2.Deposit
    fill_in "Year", with: @deposites_and_credits2.Year
    fill_in "State", with: @deposites_and_credits2.state
    click_on "Update Deposites and credits2"

    assert_text "Deposites and credits2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Deposites and credits2" do
    visit deposites_and_credits2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deposites and credits2 was successfully destroyed"
  end
end
