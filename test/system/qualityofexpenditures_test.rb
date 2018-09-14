require "application_system_test_case"

class QualityofexpendituresTest < ApplicationSystemTestCase
  setup do
    @qualityofexpenditure = qualityofexpenditures(:one)
  end

  test "visiting the index" do
    visit qualityofexpenditures_url
    assert_selector "h1", text: "Qualityofexpenditures"
  end

  test "creating a Qualityofexpenditure" do
    visit qualityofexpenditures_url
    click_on "New Qualityofexpenditure"

    fill_in "2012 13", with: @qualityofexpenditure.2012-13
    fill_in "2013 14", with: @qualityofexpenditure.2013-14
    fill_in "2014 15", with: @qualityofexpenditure.2014-15
    fill_in "2015 16", with: @qualityofexpenditure.2015-16
    fill_in "2016 17", with: @qualityofexpenditure.2016-17
    fill_in "2017 18 Be", with: @qualityofexpenditure.2017-18_BE
    fill_in "Sector", with: @qualityofexpenditure.Sector
    click_on "Create Qualityofexpenditure"

    assert_text "Qualityofexpenditure was successfully created"
    click_on "Back"
  end

  test "updating a Qualityofexpenditure" do
    visit qualityofexpenditures_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @qualityofexpenditure.2012-13
    fill_in "2013 14", with: @qualityofexpenditure.2013-14
    fill_in "2014 15", with: @qualityofexpenditure.2014-15
    fill_in "2015 16", with: @qualityofexpenditure.2015-16
    fill_in "2016 17", with: @qualityofexpenditure.2016-17
    fill_in "2017 18 Be", with: @qualityofexpenditure.2017-18_BE
    fill_in "Sector", with: @qualityofexpenditure.Sector
    click_on "Update Qualityofexpenditure"

    assert_text "Qualityofexpenditure was successfully updated"
    click_on "Back"
  end

  test "destroying a Qualityofexpenditure" do
    visit qualityofexpenditures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Qualityofexpenditure was successfully destroyed"
  end
end
