require "application_system_test_case"

class RevenueExpendituresTest < ApplicationSystemTestCase
  setup do
    @revenue_expenditure = revenue_expenditures(:one)
  end

  test "visiting the index" do
    visit revenue_expenditures_url
    assert_selector "h1", text: "Revenue Expenditures"
  end

  test "creating a Revenue expenditure" do
    visit revenue_expenditures_url
    click_on "New Revenue Expenditure"

    fill_in "2012 13", with: @revenue_expenditure.2012-13
    fill_in "2012 17", with: @revenue_expenditure.2012-17
    fill_in "2013 14", with: @revenue_expenditure.2013-14
    fill_in "2014 15", with: @revenue_expenditure.2014-15
    fill_in "2015 16", with: @revenue_expenditure.2015-16
    fill_in "2016 17", with: @revenue_expenditure.2016-17
    fill_in "2017 18 Be", with: @revenue_expenditure.2017-18_BE
    fill_in "Sector", with: @revenue_expenditure.Sector
    click_on "Create Revenue expenditure"

    assert_text "Revenue expenditure was successfully created"
    click_on "Back"
  end

  test "updating a Revenue expenditure" do
    visit revenue_expenditures_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @revenue_expenditure.2012-13
    fill_in "2012 17", with: @revenue_expenditure.2012-17
    fill_in "2013 14", with: @revenue_expenditure.2013-14
    fill_in "2014 15", with: @revenue_expenditure.2014-15
    fill_in "2015 16", with: @revenue_expenditure.2015-16
    fill_in "2016 17", with: @revenue_expenditure.2016-17
    fill_in "2017 18 Be", with: @revenue_expenditure.2017-18_BE
    fill_in "Sector", with: @revenue_expenditure.Sector
    click_on "Update Revenue expenditure"

    assert_text "Revenue expenditure was successfully updated"
    click_on "Back"
  end

  test "destroying a Revenue expenditure" do
    visit revenue_expenditures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Revenue expenditure was successfully destroyed"
  end
end
