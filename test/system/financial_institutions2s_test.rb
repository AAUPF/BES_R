require "application_system_test_case"

class FinancialInstitutions2sTest < ApplicationSystemTestCase
  setup do
    @financial_institutions2 = financial_institutions2s(:one)
  end

  test "visiting the index" do
    visit financial_institutions2s_url
    assert_selector "h1", text: "Financial Institutions2s"
  end

  test "creating a Financial institutions2" do
    visit financial_institutions2s_url
    click_on "New Financial Institutions2"

    fill_in "2010 11", with: @financial_institutions2.2010-11
    fill_in "2011 12", with: @financial_institutions2.2011-12
    fill_in "2012 13", with: @financial_institutions2.2012-13
    fill_in "2013 14", with: @financial_institutions2.2013-14
    fill_in "2014 15", with: @financial_institutions2.2014-15
    fill_in "2015 16", with: @financial_institutions2.2015-16
    fill_in "2016 17", with: @financial_institutions2.2016-17
    fill_in "Sectors", with: @financial_institutions2.Sectors
    click_on "Create Financial institutions2"

    assert_text "Financial institutions2 was successfully created"
    click_on "Back"
  end

  test "updating a Financial institutions2" do
    visit financial_institutions2s_url
    click_on "Edit", match: :first

    fill_in "2010 11", with: @financial_institutions2.2010-11
    fill_in "2011 12", with: @financial_institutions2.2011-12
    fill_in "2012 13", with: @financial_institutions2.2012-13
    fill_in "2013 14", with: @financial_institutions2.2013-14
    fill_in "2014 15", with: @financial_institutions2.2014-15
    fill_in "2015 16", with: @financial_institutions2.2015-16
    fill_in "2016 17", with: @financial_institutions2.2016-17
    fill_in "Sectors", with: @financial_institutions2.Sectors
    click_on "Update Financial institutions2"

    assert_text "Financial institutions2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Financial institutions2" do
    visit financial_institutions2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Financial institutions2 was successfully destroyed"
  end
end
