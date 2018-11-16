require "application_system_test_case"

class PanchayatiRaj2sTest < ApplicationSystemTestCase
  setup do
    @panchayati_raj2 = panchayati_raj2s(:one)
  end

  test "visiting the index" do
    visit panchayati_raj2s_url
    assert_selector "h1", text: "Panchayati Raj2s"
  end

  test "creating a Panchayati raj2" do
    visit panchayati_raj2s_url
    click_on "New Panchayati Raj2"

    fill_in "2013 14 Actual", with: @panchayati_raj2.2013_14_Actual
    fill_in "2014 15 Actual", with: @panchayati_raj2.2014_15_Actual
    fill_in "2015 16 Actual", with: @panchayati_raj2.2015_16_Actual
    fill_in "2016 17 Be", with: @panchayati_raj2.2016_17_BE
    fill_in "Indicatorstring", with: @panchayati_raj2.Indicatorstring
    fill_in "Sector", with: @panchayati_raj2.Sector
    click_on "Create Panchayati raj2"

    assert_text "Panchayati raj2 was successfully created"
    click_on "Back"
  end

  test "updating a Panchayati raj2" do
    visit panchayati_raj2s_url
    click_on "Edit", match: :first

    fill_in "2013 14 Actual", with: @panchayati_raj2.2013_14_Actual
    fill_in "2014 15 Actual", with: @panchayati_raj2.2014_15_Actual
    fill_in "2015 16 Actual", with: @panchayati_raj2.2015_16_Actual
    fill_in "2016 17 Be", with: @panchayati_raj2.2016_17_BE
    fill_in "Indicatorstring", with: @panchayati_raj2.Indicatorstring
    fill_in "Sector", with: @panchayati_raj2.Sector
    click_on "Update Panchayati raj2"

    assert_text "Panchayati raj2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Panchayati raj2" do
    visit panchayati_raj2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Panchayati raj2 was successfully destroyed"
  end
end
