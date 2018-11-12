require "application_system_test_case"

class OperationalAndFinancialStatus2sTest < ApplicationSystemTestCase
  setup do
    @operational_and_financial_status2 = operational_and_financial_status2s(:one)
  end

  test "visiting the index" do
    visit operational_and_financial_status2s_url
    assert_selector "h1", text: "Operational And Financial Status2s"
  end

  test "creating a Operational and financial status2" do
    visit operational_and_financial_status2s_url
    click_on "New Operational And Financial Status2"

    fill_in "2011 12", with: @operational_and_financial_status2.2011-12
    fill_in "2012 13", with: @operational_and_financial_status2.2012-13
    fill_in "2013 14", with: @operational_and_financial_status2.2013-14
    fill_in "2014 15", with: @operational_and_financial_status2.2014-15
    fill_in "2015 16", with: @operational_and_financial_status2.2015-16
    fill_in "2016 17", with: @operational_and_financial_status2.2016-17
    fill_in "Losses", with: @operational_and_financial_status2.Losses
    click_on "Create Operational and financial status2"

    assert_text "Operational and financial status2 was successfully created"
    click_on "Back"
  end

  test "updating a Operational and financial status2" do
    visit operational_and_financial_status2s_url
    click_on "Edit", match: :first

    fill_in "2011 12", with: @operational_and_financial_status2.2011-12
    fill_in "2012 13", with: @operational_and_financial_status2.2012-13
    fill_in "2013 14", with: @operational_and_financial_status2.2013-14
    fill_in "2014 15", with: @operational_and_financial_status2.2014-15
    fill_in "2015 16", with: @operational_and_financial_status2.2015-16
    fill_in "2016 17", with: @operational_and_financial_status2.2016-17
    fill_in "Losses", with: @operational_and_financial_status2.Losses
    click_on "Update Operational and financial status2"

    assert_text "Operational and financial status2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Operational and financial status2" do
    visit operational_and_financial_status2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Operational and financial status2 was successfully destroyed"
  end
end
