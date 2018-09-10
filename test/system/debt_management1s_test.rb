require "application_system_test_case"

class DebtManagement1sTest < ApplicationSystemTestCase
  setup do
    @debt_management1 = debt_management1s(:one)
  end

  test "visiting the index" do
    visit debt_management1s_url
    assert_selector "h1", text: "Debt Management1s"
  end

  test "creating a Debt management1" do
    visit debt_management1s_url
    click_on "New Debt Management1"

    fill_in "2012 13", with: @debt_management1.2012-13
    fill_in "2013 14", with: @debt_management1.2013-14
    fill_in "2014 15", with: @debt_management1.2014-15
    fill_in "2015 16", with: @debt_management1.2015-16
    fill_in "2016 17", with: @debt_management1.2016-17
    fill_in "2017 18 Be", with: @debt_management1.2017-18_BE
    fill_in "Indicator", with: @debt_management1.Indicator
    fill_in "Sector", with: @debt_management1.Sector
    click_on "Create Debt management1"

    assert_text "Debt management1 was successfully created"
    click_on "Back"
  end

  test "updating a Debt management1" do
    visit debt_management1s_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @debt_management1.2012-13
    fill_in "2013 14", with: @debt_management1.2013-14
    fill_in "2014 15", with: @debt_management1.2014-15
    fill_in "2015 16", with: @debt_management1.2015-16
    fill_in "2016 17", with: @debt_management1.2016-17
    fill_in "2017 18 Be", with: @debt_management1.2017-18_BE
    fill_in "Indicator", with: @debt_management1.Indicator
    fill_in "Sector", with: @debt_management1.Sector
    click_on "Update Debt management1"

    assert_text "Debt management1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Debt management1" do
    visit debt_management1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Debt management1 was successfully destroyed"
  end
end
