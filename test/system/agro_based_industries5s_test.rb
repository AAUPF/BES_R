require "application_system_test_case"

class AgroBasedIndustries5sTest < ApplicationSystemTestCase
  setup do
    @agro_based_industries5 = agro_based_industries5s(:one)
  end

  test "visiting the index" do
    visit agro_based_industries5s_url
    assert_selector "h1", text: "Agro Based Industries5s"
  end

  test "creating a Agro based industries5" do
    visit agro_based_industries5s_url
    click_on "New Agro Based Industries5"

    fill_in "2012 13", with: @agro_based_industries5.2012-13
    fill_in "2013 14", with: @agro_based_industries5.2013-14
    fill_in "2014 15", with: @agro_based_industries5.2014-15
    fill_in "2015 16", with: @agro_based_industries5.2015-16
    fill_in "2016 17", with: @agro_based_industries5.2016-17
    fill_in "Indicator", with: @agro_based_industries5.Indicator
    fill_in "Sector", with: @agro_based_industries5.Sector
    click_on "Create Agro based industries5"

    assert_text "Agro based industries5 was successfully created"
    click_on "Back"
  end

  test "updating a Agro based industries5" do
    visit agro_based_industries5s_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @agro_based_industries5.2012-13
    fill_in "2013 14", with: @agro_based_industries5.2013-14
    fill_in "2014 15", with: @agro_based_industries5.2014-15
    fill_in "2015 16", with: @agro_based_industries5.2015-16
    fill_in "2016 17", with: @agro_based_industries5.2016-17
    fill_in "Indicator", with: @agro_based_industries5.Indicator
    fill_in "Sector", with: @agro_based_industries5.Sector
    click_on "Update Agro based industries5"

    assert_text "Agro based industries5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Agro based industries5" do
    visit agro_based_industries5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agro based industries5 was successfully destroyed"
  end
end
