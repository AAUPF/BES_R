require "application_system_test_case"

class FinancialPosition1sTest < ApplicationSystemTestCase
  setup do
    @financial_position1 = financial_position1s(:one)
  end

  test "visiting the index" do
    visit financial_position1s_url
    assert_selector "h1", text: "Financial Position1s"
  end

  test "creating a Financial position1" do
    visit financial_position1s_url
    click_on "New Financial Position1"

    fill_in "2012 13", with: @financial_position1.2012-13
    fill_in "2013 14", with: @financial_position1.2013-14
    fill_in "2014 15", with: @financial_position1.2014-15
    fill_in "2015 16", with: @financial_position1.2015-16
    fill_in "2016 17", with: @financial_position1.2016-17
    fill_in "2017 18 Be", with: @financial_position1.2017-18_BE
    fill_in "Indicator", with: @financial_position1.Indicator
    fill_in "Sector", with: @financial_position1.Sector
    click_on "Create Financial position1"

    assert_text "Financial position1 was successfully created"
    click_on "Back"
  end

  test "updating a Financial position1" do
    visit financial_position1s_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @financial_position1.2012-13
    fill_in "2013 14", with: @financial_position1.2013-14
    fill_in "2014 15", with: @financial_position1.2014-15
    fill_in "2015 16", with: @financial_position1.2015-16
    fill_in "2016 17", with: @financial_position1.2016-17
    fill_in "2017 18 Be", with: @financial_position1.2017-18_BE
    fill_in "Indicator", with: @financial_position1.Indicator
    fill_in "Sector", with: @financial_position1.Sector
    click_on "Update Financial position1"

    assert_text "Financial position1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Financial position1" do
    visit financial_position1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Financial position1 was successfully destroyed"
  end
end
