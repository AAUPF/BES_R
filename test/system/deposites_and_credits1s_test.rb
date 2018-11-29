require "application_system_test_case"

class DepositesAndCredits1sTest < ApplicationSystemTestCase
  setup do
    @deposites_and_credits1 = deposites_and_credits1s(:one)
  end

  test "visiting the index" do
    visit deposites_and_credits1s_url
    assert_selector "h1", text: "Deposites And Credits1s"
  end

  test "creating a Deposites and credits1" do
    visit deposites_and_credits1s_url
    click_on "New Deposites And Credits1"

    fill_in "2014 15", with: @deposites_and_credits1.2014-15
    fill_in "2015 16", with: @deposites_and_credits1.2015-16
    fill_in "Indicator", with: @deposites_and_credits1.Indicator
    fill_in "Sector", with: @deposites_and_credits1.Sector
    click_on "Create Deposites and credits1"

    assert_text "Deposites and credits1 was successfully created"
    click_on "Back"
  end

  test "updating a Deposites and credits1" do
    visit deposites_and_credits1s_url
    click_on "Edit", match: :first

    fill_in "2014 15", with: @deposites_and_credits1.2014-15
    fill_in "2015 16", with: @deposites_and_credits1.2015-16
    fill_in "Indicator", with: @deposites_and_credits1.Indicator
    fill_in "Sector", with: @deposites_and_credits1.Sector
    click_on "Update Deposites and credits1"

    assert_text "Deposites and credits1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Deposites and credits1" do
    visit deposites_and_credits1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deposites and credits1 was successfully destroyed"
  end
end
