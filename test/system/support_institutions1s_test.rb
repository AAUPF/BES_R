require "application_system_test_case"

class SupportInstitutions1sTest < ApplicationSystemTestCase
  setup do
    @support_institutions1 = support_institutions1s(:one)
  end

  test "visiting the index" do
    visit support_institutions1s_url
    assert_selector "h1", text: "Support Institutions1s"
  end

  test "creating a Support institutions1" do
    visit support_institutions1s_url
    click_on "New Support Institutions1"

    fill_in "2012 13", with: @support_institutions1.2012-13
    fill_in "2013 14", with: @support_institutions1.2013-14
    fill_in "2014 15", with: @support_institutions1.2014-15
    fill_in "2015 16", with: @support_institutions1.2015-16
    fill_in "2016 17", with: @support_institutions1.2016-17
    fill_in "Cagr", with: @support_institutions1.CAGR
    fill_in "Expenditure", with: @support_institutions1.Expenditure
    click_on "Create Support institutions1"

    assert_text "Support institutions1 was successfully created"
    click_on "Back"
  end

  test "updating a Support institutions1" do
    visit support_institutions1s_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @support_institutions1.2012-13
    fill_in "2013 14", with: @support_institutions1.2013-14
    fill_in "2014 15", with: @support_institutions1.2014-15
    fill_in "2015 16", with: @support_institutions1.2015-16
    fill_in "2016 17", with: @support_institutions1.2016-17
    fill_in "Cagr", with: @support_institutions1.CAGR
    fill_in "Expenditure", with: @support_institutions1.Expenditure
    click_on "Update Support institutions1"

    assert_text "Support institutions1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Support institutions1" do
    visit support_institutions1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Support institutions1 was successfully destroyed"
  end
end
