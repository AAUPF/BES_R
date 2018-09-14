require "application_system_test_case"

class TaxDepartment4sTest < ApplicationSystemTestCase
  setup do
    @tax_department4 = tax_department4s(:one)
  end

  test "visiting the index" do
    visit tax_department4s_url
    assert_selector "h1", text: "Tax Department4s"
  end

  test "creating a Tax department4" do
    visit tax_department4s_url
    click_on "New Tax Department4"

    fill_in "2012 13", with: @tax_department4.2012-13
    fill_in "2013 14", with: @tax_department4.2013-14
    fill_in "2014 15", with: @tax_department4.2014-15
    fill_in "2015 16", with: @tax_department4.2015-16
    fill_in "2016 17", with: @tax_department4.2016-17
    fill_in "Sector", with: @tax_department4.Sector
    click_on "Create Tax department4"

    assert_text "Tax department4 was successfully created"
    click_on "Back"
  end

  test "updating a Tax department4" do
    visit tax_department4s_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @tax_department4.2012-13
    fill_in "2013 14", with: @tax_department4.2013-14
    fill_in "2014 15", with: @tax_department4.2014-15
    fill_in "2015 16", with: @tax_department4.2015-16
    fill_in "2016 17", with: @tax_department4.2016-17
    fill_in "Sector", with: @tax_department4.Sector
    click_on "Update Tax department4"

    assert_text "Tax department4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Tax department4" do
    visit tax_department4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tax department4 was successfully destroyed"
  end
end
