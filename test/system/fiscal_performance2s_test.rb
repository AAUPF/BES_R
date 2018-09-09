require "application_system_test_case"

class FiscalPerformance2sTest < ApplicationSystemTestCase
  setup do
    @fiscal_performance2 = fiscal_performance2s(:one)
  end

  test "visiting the index" do
    visit fiscal_performance2s_url
    assert_selector "h1", text: "Fiscal Performance2s"
  end

  test "creating a Fiscal performance2" do
    visit fiscal_performance2s_url
    click_on "New Fiscal Performance2"

    fill_in "2012 13", with: @fiscal_performance2.2012-13
    fill_in "2013 14", with: @fiscal_performance2.2013-14
    fill_in "2014 15", with: @fiscal_performance2.2014-15
    fill_in "2015 16", with: @fiscal_performance2.2015-16
    fill_in "2016 17", with: @fiscal_performance2.2016-17
    fill_in "2017 18 Be", with: @fiscal_performance2.2017-18_BE
    fill_in "Sector", with: @fiscal_performance2.Sector
    fill_in "Sub Sector", with: @fiscal_performance2.Sub_Sector
    click_on "Create Fiscal performance2"

    assert_text "Fiscal performance2 was successfully created"
    click_on "Back"
  end

  test "updating a Fiscal performance2" do
    visit fiscal_performance2s_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @fiscal_performance2.2012-13
    fill_in "2013 14", with: @fiscal_performance2.2013-14
    fill_in "2014 15", with: @fiscal_performance2.2014-15
    fill_in "2015 16", with: @fiscal_performance2.2015-16
    fill_in "2016 17", with: @fiscal_performance2.2016-17
    fill_in "2017 18 Be", with: @fiscal_performance2.2017-18_BE
    fill_in "Sector", with: @fiscal_performance2.Sector
    fill_in "Sub Sector", with: @fiscal_performance2.Sub_Sector
    click_on "Update Fiscal performance2"

    assert_text "Fiscal performance2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Fiscal performance2" do
    visit fiscal_performance2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fiscal performance2 was successfully destroyed"
  end
end
