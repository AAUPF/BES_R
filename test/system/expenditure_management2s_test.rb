require "application_system_test_case"

class ExpenditureManagement2sTest < ApplicationSystemTestCase
  setup do
    @expenditure_management2 = expenditure_management2s(:one)
  end

  test "visiting the index" do
    visit expenditure_management2s_url
    assert_selector "h1", text: "Expenditure Management2s"
  end

  test "creating a Expenditure management2" do
    visit expenditure_management2s_url
    click_on "New Expenditure Management2"

    fill_in "2012 13", with: @expenditure_management2.2012-13
    fill_in "2013 14", with: @expenditure_management2.2013-14
    fill_in "2014 15", with: @expenditure_management2.2014-15
    fill_in "2015 16", with: @expenditure_management2.2015-16
    fill_in "2016 17", with: @expenditure_management2.2016-17
    fill_in "2017 18 Be", with: @expenditure_management2.2017-18_BE
    fill_in "Sector", with: @expenditure_management2.Sector
    click_on "Create Expenditure management2"

    assert_text "Expenditure management2 was successfully created"
    click_on "Back"
  end

  test "updating a Expenditure management2" do
    visit expenditure_management2s_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @expenditure_management2.2012-13
    fill_in "2013 14", with: @expenditure_management2.2013-14
    fill_in "2014 15", with: @expenditure_management2.2014-15
    fill_in "2015 16", with: @expenditure_management2.2015-16
    fill_in "2016 17", with: @expenditure_management2.2016-17
    fill_in "2017 18 Be", with: @expenditure_management2.2017-18_BE
    fill_in "Sector", with: @expenditure_management2.Sector
    click_on "Update Expenditure management2"

    assert_text "Expenditure management2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Expenditure management2" do
    visit expenditure_management2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expenditure management2 was successfully destroyed"
  end
end
