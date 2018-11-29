require "application_system_test_case"

class DepositesAndCredits5sTest < ApplicationSystemTestCase
  setup do
    @deposites_and_credits5 = deposites_and_credits5s(:one)
  end

  test "visiting the index" do
    visit deposites_and_credits5s_url
    assert_selector "h1", text: "Deposites And Credits5s"
  end

  test "creating a Deposites and credits5" do
    visit deposites_and_credits5s_url
    click_on "New Deposites And Credits5"

    fill_in "Cd Ratio", with: @deposites_and_credits5.CD_Ratio
    fill_in "District", with: @deposites_and_credits5.District
    fill_in "Year", with: @deposites_and_credits5.Year
    click_on "Create Deposites and credits5"

    assert_text "Deposites and credits5 was successfully created"
    click_on "Back"
  end

  test "updating a Deposites and credits5" do
    visit deposites_and_credits5s_url
    click_on "Edit", match: :first

    fill_in "Cd Ratio", with: @deposites_and_credits5.CD_Ratio
    fill_in "District", with: @deposites_and_credits5.District
    fill_in "Year", with: @deposites_and_credits5.Year
    click_on "Update Deposites and credits5"

    assert_text "Deposites and credits5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Deposites and credits5" do
    visit deposites_and_credits5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deposites and credits5 was successfully destroyed"
  end
end
