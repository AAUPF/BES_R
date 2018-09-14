require "application_system_test_case"

class SectoralExpendituresTest < ApplicationSystemTestCase
  setup do
    @sectoral_expenditure = sectoral_expenditures(:one)
  end

  test "visiting the index" do
    visit sectoral_expenditures_url
    assert_selector "h1", text: "Sectoral Expenditures"
  end

  test "creating a Sectoral expenditure" do
    visit sectoral_expenditures_url
    click_on "New Sectoral Expenditure"

    fill_in "2012 13", with: @sectoral_expenditure.2012-13
    fill_in "2013 14", with: @sectoral_expenditure.2013-14
    fill_in "2014 15", with: @sectoral_expenditure.2014-15
    fill_in "2015 16", with: @sectoral_expenditure.2015-16
    fill_in "2016 17", with: @sectoral_expenditure.2016-17
    fill_in "2017 18 Be", with: @sectoral_expenditure.2017-18_BE
    fill_in "Sector", with: @sectoral_expenditure.Sector
    fill_in "Indicator", with: @sectoral_expenditure.indicator
    click_on "Create Sectoral expenditure"

    assert_text "Sectoral expenditure was successfully created"
    click_on "Back"
  end

  test "updating a Sectoral expenditure" do
    visit sectoral_expenditures_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @sectoral_expenditure.2012-13
    fill_in "2013 14", with: @sectoral_expenditure.2013-14
    fill_in "2014 15", with: @sectoral_expenditure.2014-15
    fill_in "2015 16", with: @sectoral_expenditure.2015-16
    fill_in "2016 17", with: @sectoral_expenditure.2016-17
    fill_in "2017 18 Be", with: @sectoral_expenditure.2017-18_BE
    fill_in "Sector", with: @sectoral_expenditure.Sector
    fill_in "Indicator", with: @sectoral_expenditure.indicator
    click_on "Update Sectoral expenditure"

    assert_text "Sectoral expenditure was successfully updated"
    click_on "Back"
  end

  test "destroying a Sectoral expenditure" do
    visit sectoral_expenditures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sectoral expenditure was successfully destroyed"
  end
end
