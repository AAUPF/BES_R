require "application_system_test_case"

class DepositesAndCredits6sTest < ApplicationSystemTestCase
  setup do
    @deposites_and_credits6 = deposites_and_credits6s(:one)
  end

  test "visiting the index" do
    visit deposites_and_credits6s_url
    assert_selector "h1", text: "Deposites And Credits6s"
  end

  test "creating a Deposites and credits6" do
    visit deposites_and_credits6s_url
    click_on "New Deposites And Credits6"

    fill_in "2013 14", with: @deposites_and_credits6.2013-14
    fill_in "2014 15", with: @deposites_and_credits6.2014-15
    fill_in "2015 16", with: @deposites_and_credits6.2015-16
    fill_in "2016 17", with: @deposites_and_credits6.2016-17
    fill_in "2017 18 Upto Sep 2017", with: @deposites_and_credits6.2017_18_upto_Sep_2017
    fill_in "Indicator", with: @deposites_and_credits6.Indicator
    fill_in "Number Of Branches", with: @deposites_and_credits6.Number_of_Branches
    fill_in "Sector", with: @deposites_and_credits6.Sector
    click_on "Create Deposites and credits6"

    assert_text "Deposites and credits6 was successfully created"
    click_on "Back"
  end

  test "updating a Deposites and credits6" do
    visit deposites_and_credits6s_url
    click_on "Edit", match: :first

    fill_in "2013 14", with: @deposites_and_credits6.2013-14
    fill_in "2014 15", with: @deposites_and_credits6.2014-15
    fill_in "2015 16", with: @deposites_and_credits6.2015-16
    fill_in "2016 17", with: @deposites_and_credits6.2016-17
    fill_in "2017 18 Upto Sep 2017", with: @deposites_and_credits6.2017_18_upto_Sep_2017
    fill_in "Indicator", with: @deposites_and_credits6.Indicator
    fill_in "Number Of Branches", with: @deposites_and_credits6.Number_of_Branches
    fill_in "Sector", with: @deposites_and_credits6.Sector
    click_on "Update Deposites and credits6"

    assert_text "Deposites and credits6 was successfully updated"
    click_on "Back"
  end

  test "destroying a Deposites and credits6" do
    visit deposites_and_credits6s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deposites and credits6 was successfully destroyed"
  end
end
