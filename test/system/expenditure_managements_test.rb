require "application_system_test_case"

class ExpenditureManagementsTest < ApplicationSystemTestCase
  setup do
    @expenditure_management = expenditure_managements(:one)
  end

  test "visiting the index" do
    visit expenditure_managements_url
    assert_selector "h1", text: "Expenditure Managements"
  end

  test "creating a Expenditure management" do
    visit expenditure_managements_url
    click_on "New Expenditure Management"

    fill_in "2012 13", with: @expenditure_management.2012-13
    fill_in "2013 14", with: @expenditure_management.2013-14
    fill_in "2014 15", with: @expenditure_management.2014-15
    fill_in "2015 16", with: @expenditure_management.2015-16
    fill_in "2016 17", with: @expenditure_management.2016-17
    fill_in "2017 18 Be", with: @expenditure_management.2017-18_BE
    fill_in "Sector", with: @expenditure_management.Sector
    click_on "Create Expenditure management"

    assert_text "Expenditure management was successfully created"
    click_on "Back"
  end

  test "updating a Expenditure management" do
    visit expenditure_managements_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @expenditure_management.2012-13
    fill_in "2013 14", with: @expenditure_management.2013-14
    fill_in "2014 15", with: @expenditure_management.2014-15
    fill_in "2015 16", with: @expenditure_management.2015-16
    fill_in "2016 17", with: @expenditure_management.2016-17
    fill_in "2017 18 Be", with: @expenditure_management.2017-18_BE
    fill_in "Sector", with: @expenditure_management.Sector
    click_on "Update Expenditure management"

    assert_text "Expenditure management was successfully updated"
    click_on "Back"
  end

  test "destroying a Expenditure management" do
    visit expenditure_managements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expenditure management was successfully destroyed"
  end
end
