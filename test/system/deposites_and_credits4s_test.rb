require "application_system_test_case"

class DepositesAndCredits4sTest < ApplicationSystemTestCase
  setup do
    @deposites_and_credits4 = deposites_and_credits4s(:one)
  end

  test "visiting the index" do
    visit deposites_and_credits4s_url
    assert_selector "h1", text: "Deposites And Credits4s"
  end

  test "creating a Deposites and credits4" do
    visit deposites_and_credits4s_url
    click_on "New Deposites And Credits4"

    fill_in "As Per Sanction", with: @deposites_and_credits4.As_per_Sanction
    fill_in "As Per Utilization", with: @deposites_and_credits4.As_per_Utilization
    fill_in "State", with: @deposites_and_credits4.State
    fill_in "Year", with: @deposites_and_credits4.Year
    click_on "Create Deposites and credits4"

    assert_text "Deposites and credits4 was successfully created"
    click_on "Back"
  end

  test "updating a Deposites and credits4" do
    visit deposites_and_credits4s_url
    click_on "Edit", match: :first

    fill_in "As Per Sanction", with: @deposites_and_credits4.As_per_Sanction
    fill_in "As Per Utilization", with: @deposites_and_credits4.As_per_Utilization
    fill_in "State", with: @deposites_and_credits4.State
    fill_in "Year", with: @deposites_and_credits4.Year
    click_on "Update Deposites and credits4"

    assert_text "Deposites and credits4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Deposites and credits4" do
    visit deposites_and_credits4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deposites and credits4 was successfully destroyed"
  end
end
