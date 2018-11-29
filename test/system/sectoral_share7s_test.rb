require "application_system_test_case"

class SectoralShare7sTest < ApplicationSystemTestCase
  setup do
    @sectoral_share7 = sectoral_share7s(:one)
  end

  test "visiting the index" do
    visit sectoral_share7s_url
    assert_selector "h1", text: "Sectoral Share7s"
  end

  test "creating a Sectoral share7" do
    visit sectoral_share7s_url
    click_on "New Sectoral Share7"

    fill_in "2013 14", with: @sectoral_share7.2013-14
    fill_in "2014 15", with: @sectoral_share7.2014-15
    fill_in "2015 16", with: @sectoral_share7.2015-16
    fill_in "Indicator", with: @sectoral_share7.Indicator
    fill_in "State", with: @sectoral_share7.State
    click_on "Create Sectoral share7"

    assert_text "Sectoral share7 was successfully created"
    click_on "Back"
  end

  test "updating a Sectoral share7" do
    visit sectoral_share7s_url
    click_on "Edit", match: :first

    fill_in "2013 14", with: @sectoral_share7.2013-14
    fill_in "2014 15", with: @sectoral_share7.2014-15
    fill_in "2015 16", with: @sectoral_share7.2015-16
    fill_in "Indicator", with: @sectoral_share7.Indicator
    fill_in "State", with: @sectoral_share7.State
    click_on "Update Sectoral share7"

    assert_text "Sectoral share7 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sectoral share7" do
    visit sectoral_share7s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sectoral share7 was successfully destroyed"
  end
end
