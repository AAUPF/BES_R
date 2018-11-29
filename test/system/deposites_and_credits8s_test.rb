require "application_system_test_case"

class DepositesAndCredits8sTest < ApplicationSystemTestCase
  setup do
    @deposites_and_credits8 = deposites_and_credits8s(:one)
  end

  test "visiting the index" do
    visit deposites_and_credits8s_url
    assert_selector "h1", text: "Deposites And Credits8s"
  end

  test "creating a Deposites and credits8" do
    visit deposites_and_credits8s_url
    click_on "New Deposites And Credits8"

    fill_in "2014 15", with: @deposites_and_credits8.2014-15
    fill_in "2015 16", with: @deposites_and_credits8.2015-16
    fill_in "2016 17", with: @deposites_and_credits8.2016-17
    fill_in "2017 18 Upto Sep 2017", with: @deposites_and_credits8.2017_18_upto_Sep_2017
    fill_in "Indicator", with: @deposites_and_credits8.Indicator
    fill_in "Sector", with: @deposites_and_credits8.Sector
    click_on "Create Deposites and credits8"

    assert_text "Deposites and credits8 was successfully created"
    click_on "Back"
  end

  test "updating a Deposites and credits8" do
    visit deposites_and_credits8s_url
    click_on "Edit", match: :first

    fill_in "2014 15", with: @deposites_and_credits8.2014-15
    fill_in "2015 16", with: @deposites_and_credits8.2015-16
    fill_in "2016 17", with: @deposites_and_credits8.2016-17
    fill_in "2017 18 Upto Sep 2017", with: @deposites_and_credits8.2017_18_upto_Sep_2017
    fill_in "Indicator", with: @deposites_and_credits8.Indicator
    fill_in "Sector", with: @deposites_and_credits8.Sector
    click_on "Update Deposites and credits8"

    assert_text "Deposites and credits8 was successfully updated"
    click_on "Back"
  end

  test "destroying a Deposites and credits8" do
    visit deposites_and_credits8s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deposites and credits8 was successfully destroyed"
  end
end
