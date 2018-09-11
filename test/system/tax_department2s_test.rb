require "application_system_test_case"

class TaxDepartment2sTest < ApplicationSystemTestCase
  setup do
    @tax_department2 = tax_department2s(:one)
  end

  test "visiting the index" do
    visit tax_department2s_url
    assert_selector "h1", text: "Tax Department2s"
  end

  test "creating a Tax department2" do
    visit tax_department2s_url
    click_on "New Tax Department2"

    fill_in "2012 13", with: @tax_department2.2012-13
    fill_in "2013 14", with: @tax_department2.2013-14
    fill_in "2014 15", with: @tax_department2.2014-15
    fill_in "2015 16", with: @tax_department2.2015-16
    fill_in "2016 17", with: @tax_department2.2016-17
    fill_in "2017 18 Be", with: @tax_department2.2017-18_BE
    fill_in "Sector", with: @tax_department2.Sector
    click_on "Create Tax department2"

    assert_text "Tax department2 was successfully created"
    click_on "Back"
  end

  test "updating a Tax department2" do
    visit tax_department2s_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @tax_department2.2012-13
    fill_in "2013 14", with: @tax_department2.2013-14
    fill_in "2014 15", with: @tax_department2.2014-15
    fill_in "2015 16", with: @tax_department2.2015-16
    fill_in "2016 17", with: @tax_department2.2016-17
    fill_in "2017 18 Be", with: @tax_department2.2017-18_BE
    fill_in "Sector", with: @tax_department2.Sector
    click_on "Update Tax department2"

    assert_text "Tax department2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Tax department2" do
    visit tax_department2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tax department2 was successfully destroyed"
  end
end
