require "application_system_test_case"

class Poverty1sTest < ApplicationSystemTestCase
  setup do
    @poverty1 = poverty1s(:one)
  end

  test "visiting the index" do
    visit poverty1s_url
    assert_selector "h1", text: "Poverty1s"
  end

  test "creating a Poverty1" do
    visit poverty1s_url
    click_on "New Poverty1"

    fill_in "1993 94", with: @poverty1.1993-94
    fill_in "1999 00", with: @poverty1.1999-00
    fill_in "2004 05", with: @poverty1.2004-05
    fill_in "2011 12", with: @poverty1.2011-12
    fill_in "Indicator", with: @poverty1.Indicator
    fill_in "Poverty Line 2004 05", with: @poverty1.Poverty_Line_2004_05
    fill_in "Poverty Line 2011 12", with: @poverty1.Poverty_Line_2011_12
    fill_in "Reduction In Poverty Between  2004 05 And 2011 12", with: @poverty1.Reduction_in_Poverty_between _2004_05_and_2011_12
    fill_in "Sector", with: @poverty1.Sector
    click_on "Create Poverty1"

    assert_text "Poverty1 was successfully created"
    click_on "Back"
  end

  test "updating a Poverty1" do
    visit poverty1s_url
    click_on "Edit", match: :first

    fill_in "1993 94", with: @poverty1.1993-94
    fill_in "1999 00", with: @poverty1.1999-00
    fill_in "2004 05", with: @poverty1.2004-05
    fill_in "2011 12", with: @poverty1.2011-12
    fill_in "Indicator", with: @poverty1.Indicator
    fill_in "Poverty Line 2004 05", with: @poverty1.Poverty_Line_2004_05
    fill_in "Poverty Line 2011 12", with: @poverty1.Poverty_Line_2011_12
    fill_in "Reduction In Poverty Between  2004 05 And 2011 12", with: @poverty1.Reduction_in_Poverty_between _2004_05_and_2011_12
    fill_in "Sector", with: @poverty1.Sector
    click_on "Update Poverty1"

    assert_text "Poverty1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Poverty1" do
    visit poverty1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poverty1 was successfully destroyed"
  end
end
