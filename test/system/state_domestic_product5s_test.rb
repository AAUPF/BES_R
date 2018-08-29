require "application_system_test_case"

class StateDomesticProduct5sTest < ApplicationSystemTestCase
  setup do
    @state_domestic_product5 = state_domestic_product5s(:one)
  end

  test "visiting the index" do
    visit state_domestic_product5s_url
    assert_selector "h1", text: "State Domestic Product5s"
  end

  test "creating a State domestic product5" do
    visit state_domestic_product5s_url
    click_on "New State Domestic Product5"

    fill_in "2011 12", with: @state_domestic_product5.2011-12
    fill_in "2011 16", with: @state_domestic_product5.2011-16
    fill_in "2012 13", with: @state_domestic_product5.2012-13
    fill_in "2013 14", with: @state_domestic_product5.2013-14
    fill_in "2014 15", with: @state_domestic_product5.2014-15
    fill_in "2015 16", with: @state_domestic_product5.2015-16
    fill_in "2016 17", with: @state_domestic_product5.2016-17
    fill_in "Sector", with: @state_domestic_product5.Sector
    click_on "Create State domestic product5"

    assert_text "State domestic product5 was successfully created"
    click_on "Back"
  end

  test "updating a State domestic product5" do
    visit state_domestic_product5s_url
    click_on "Edit", match: :first

    fill_in "2011 12", with: @state_domestic_product5.2011-12
    fill_in "2011 16", with: @state_domestic_product5.2011-16
    fill_in "2012 13", with: @state_domestic_product5.2012-13
    fill_in "2013 14", with: @state_domestic_product5.2013-14
    fill_in "2014 15", with: @state_domestic_product5.2014-15
    fill_in "2015 16", with: @state_domestic_product5.2015-16
    fill_in "2016 17", with: @state_domestic_product5.2016-17
    fill_in "Sector", with: @state_domestic_product5.Sector
    click_on "Update State domestic product5"

    assert_text "State domestic product5 was successfully updated"
    click_on "Back"
  end

  test "destroying a State domestic product5" do
    visit state_domestic_product5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "State domestic product5 was successfully destroyed"
  end
end
