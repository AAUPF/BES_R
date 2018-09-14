require "application_system_test_case"

class SectoralExpenditure1sTest < ApplicationSystemTestCase
  setup do
    @sectoral_expenditure1 = sectoral_expenditure1s(:one)
  end

  test "visiting the index" do
    visit sectoral_expenditure1s_url
    assert_selector "h1", text: "Sectoral Expenditure1s"
  end

  test "creating a Sectoral expenditure1" do
    visit sectoral_expenditure1s_url
    click_on "New Sectoral Expenditure1"

    fill_in "2012 13", with: @sectoral_expenditure1.2012-13
    fill_in "2013 14", with: @sectoral_expenditure1.2013-14
    fill_in "2014 15", with: @sectoral_expenditure1.2014-15
    fill_in "2015 16", with: @sectoral_expenditure1.2015-16
    fill_in "2016 17", with: @sectoral_expenditure1.2016-17
    fill_in "2017 18 Be", with: @sectoral_expenditure1.2017-18_BE
    fill_in "Sector", with: @sectoral_expenditure1.Sector
    fill_in "Indicator", with: @sectoral_expenditure1.indicator
    click_on "Create Sectoral expenditure1"

    assert_text "Sectoral expenditure1 was successfully created"
    click_on "Back"
  end

  test "updating a Sectoral expenditure1" do
    visit sectoral_expenditure1s_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @sectoral_expenditure1.2012-13
    fill_in "2013 14", with: @sectoral_expenditure1.2013-14
    fill_in "2014 15", with: @sectoral_expenditure1.2014-15
    fill_in "2015 16", with: @sectoral_expenditure1.2015-16
    fill_in "2016 17", with: @sectoral_expenditure1.2016-17
    fill_in "2017 18 Be", with: @sectoral_expenditure1.2017-18_BE
    fill_in "Sector", with: @sectoral_expenditure1.Sector
    fill_in "Indicator", with: @sectoral_expenditure1.indicator
    click_on "Update Sectoral expenditure1"

    assert_text "Sectoral expenditure1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sectoral expenditure1" do
    visit sectoral_expenditure1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sectoral expenditure1 was successfully destroyed"
  end
end
