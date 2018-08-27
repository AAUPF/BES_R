require "application_system_test_case"

class AnnualStateDomesticProduct3sTest < ApplicationSystemTestCase
  setup do
    @annual_state_domestic_product3 = annual_state_domestic_product3s(:one)
  end

  test "visiting the index" do
    visit annual_state_domestic_product3s_url
    assert_selector "h1", text: "Annual State Domestic Product3s"
  end

  test "creating a Annual state domestic product3" do
    visit annual_state_domestic_product3s_url
    click_on "New Annual State Domestic Product3"

    fill_in "2011 12", with: @annual_state_domestic_product3.2011-12
    fill_in "2012 13", with: @annual_state_domestic_product3.2012-13
    fill_in "2013 14", with: @annual_state_domestic_product3.2013-14
    fill_in "2014 15", with: @annual_state_domestic_product3.2014-15
    fill_in "2015 16", with: @annual_state_domestic_product3.2015-16
    fill_in "2016 17", with: @annual_state_domestic_product3.2016-17
    fill_in "Sector", with: @annual_state_domestic_product3.Sector
    click_on "Create Annual state domestic product3"

    assert_text "Annual state domestic product3 was successfully created"
    click_on "Back"
  end

  test "updating a Annual state domestic product3" do
    visit annual_state_domestic_product3s_url
    click_on "Edit", match: :first

    fill_in "2011 12", with: @annual_state_domestic_product3.2011-12
    fill_in "2012 13", with: @annual_state_domestic_product3.2012-13
    fill_in "2013 14", with: @annual_state_domestic_product3.2013-14
    fill_in "2014 15", with: @annual_state_domestic_product3.2014-15
    fill_in "2015 16", with: @annual_state_domestic_product3.2015-16
    fill_in "2016 17", with: @annual_state_domestic_product3.2016-17
    fill_in "Sector", with: @annual_state_domestic_product3.Sector
    click_on "Update Annual state domestic product3"

    assert_text "Annual state domestic product3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Annual state domestic product3" do
    visit annual_state_domestic_product3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Annual state domestic product3 was successfully destroyed"
  end
end
