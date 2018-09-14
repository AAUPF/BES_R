require "application_system_test_case"

class ExpenditureManagement3sTest < ApplicationSystemTestCase
  setup do
    @expenditure_management3 = expenditure_management3s(:one)
  end

  test "visiting the index" do
    visit expenditure_management3s_url
    assert_selector "h1", text: "Expenditure Management3s"
  end

  test "creating a Expenditure management3" do
    visit expenditure_management3s_url
    click_on "New Expenditure Management3"

    fill_in "2012 13", with: @expenditure_management3.2012-13
    fill_in "2012 17", with: @expenditure_management3.2012-17
    fill_in "2013 14", with: @expenditure_management3.2013-14
    fill_in "2014 15", with: @expenditure_management3.2014-15
    fill_in "2015 16", with: @expenditure_management3.2015-16
    fill_in "2016 17", with: @expenditure_management3.2016-17
    fill_in "2017 18 Be", with: @expenditure_management3.2017-18_BE
    fill_in "Sector", with: @expenditure_management3.Sector
    click_on "Create Expenditure management3"

    assert_text "Expenditure management3 was successfully created"
    click_on "Back"
  end

  test "updating a Expenditure management3" do
    visit expenditure_management3s_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @expenditure_management3.2012-13
    fill_in "2012 17", with: @expenditure_management3.2012-17
    fill_in "2013 14", with: @expenditure_management3.2013-14
    fill_in "2014 15", with: @expenditure_management3.2014-15
    fill_in "2015 16", with: @expenditure_management3.2015-16
    fill_in "2016 17", with: @expenditure_management3.2016-17
    fill_in "2017 18 Be", with: @expenditure_management3.2017-18_BE
    fill_in "Sector", with: @expenditure_management3.Sector
    click_on "Update Expenditure management3"

    assert_text "Expenditure management3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Expenditure management3" do
    visit expenditure_management3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expenditure management3 was successfully destroyed"
  end
end
