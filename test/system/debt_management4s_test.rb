require "application_system_test_case"

class DebtManagement4sTest < ApplicationSystemTestCase
  setup do
    @debt_management4 = debt_management4s(:one)
  end

  test "visiting the index" do
    visit debt_management4s_url
    assert_selector "h1", text: "Debt Management4s"
  end

  test "creating a Debt management4" do
    visit debt_management4s_url
    click_on "New Debt Management4"

    fill_in "2012 13", with: @debt_management4.2012-13
    fill_in "2013 14", with: @debt_management4.2013-14
    fill_in "2014 15", with: @debt_management4.2014-15
    fill_in "2015 16", with: @debt_management4.2015-16
    fill_in "2016 17", with: @debt_management4.2016-17
    fill_in "2017 18 Be", with: @debt_management4.2017-18_BE
    fill_in "Sector", with: @debt_management4.Sector
    click_on "Create Debt management4"

    assert_text "Debt management4 was successfully created"
    click_on "Back"
  end

  test "updating a Debt management4" do
    visit debt_management4s_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @debt_management4.2012-13
    fill_in "2013 14", with: @debt_management4.2013-14
    fill_in "2014 15", with: @debt_management4.2014-15
    fill_in "2015 16", with: @debt_management4.2015-16
    fill_in "2016 17", with: @debt_management4.2016-17
    fill_in "2017 18 Be", with: @debt_management4.2017-18_BE
    fill_in "Sector", with: @debt_management4.Sector
    click_on "Update Debt management4"

    assert_text "Debt management4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Debt management4" do
    visit debt_management4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Debt management4 was successfully destroyed"
  end
end
