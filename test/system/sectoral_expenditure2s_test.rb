require "application_system_test_case"

class SectoralExpenditure2sTest < ApplicationSystemTestCase
  setup do
    @sectoral_expenditure2 = sectoral_expenditure2s(:one)
  end

  test "visiting the index" do
    visit sectoral_expenditure2s_url
    assert_selector "h1", text: "Sectoral Expenditure2s"
  end

  test "creating a Sectoral expenditure2" do
    visit sectoral_expenditure2s_url
    click_on "New Sectoral Expenditure2"

    fill_in "2012 13", with: @sectoral_expenditure2.2012-13
    fill_in "2013 14", with: @sectoral_expenditure2.2013-14
    fill_in "2014 15", with: @sectoral_expenditure2.2014-15
    fill_in "2015 16", with: @sectoral_expenditure2.2015-16
    fill_in "2016 17", with: @sectoral_expenditure2.2016-17
    fill_in "2017 18 Be", with: @sectoral_expenditure2.2017-18_BE
    fill_in "Sector", with: @sectoral_expenditure2.Sector
    fill_in "Sub Sector", with: @sectoral_expenditure2.Sub_Sector
    click_on "Create Sectoral expenditure2"

    assert_text "Sectoral expenditure2 was successfully created"
    click_on "Back"
  end

  test "updating a Sectoral expenditure2" do
    visit sectoral_expenditure2s_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @sectoral_expenditure2.2012-13
    fill_in "2013 14", with: @sectoral_expenditure2.2013-14
    fill_in "2014 15", with: @sectoral_expenditure2.2014-15
    fill_in "2015 16", with: @sectoral_expenditure2.2015-16
    fill_in "2016 17", with: @sectoral_expenditure2.2016-17
    fill_in "2017 18 Be", with: @sectoral_expenditure2.2017-18_BE
    fill_in "Sector", with: @sectoral_expenditure2.Sector
    fill_in "Sub Sector", with: @sectoral_expenditure2.Sub_Sector
    click_on "Update Sectoral expenditure2"

    assert_text "Sectoral expenditure2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sectoral expenditure2" do
    visit sectoral_expenditure2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sectoral expenditure2 was successfully destroyed"
  end
end
