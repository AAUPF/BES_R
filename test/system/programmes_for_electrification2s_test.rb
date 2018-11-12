require "application_system_test_case"

class ProgrammesForElectrification2sTest < ApplicationSystemTestCase
  setup do
    @programmes_for_electrification2 = programmes_for_electrification2s(:one)
  end

  test "visiting the index" do
    visit programmes_for_electrification2s_url
    assert_selector "h1", text: "Programmes For Electrification2s"
  end

  test "creating a Programmes for electrification2" do
    visit programmes_for_electrification2s_url
    click_on "New Programmes For Electrification2"

    fill_in "Agencies", with: @programmes_for_electrification2.Agencies
    fill_in "Ddg Converted Into Uev", with: @programmes_for_electrification2.DDG_converted_into_UEV
    fill_in "Eleventh Plan", with: @programmes_for_electrification2.Eleventh_Plan
    fill_in "Eleventh Plan Phase Ii", with: @programmes_for_electrification2.Eleventh_Plan_Phase_II
    fill_in "Indicator", with: @programmes_for_electrification2.Indicator
    fill_in "Indicator1", with: @programmes_for_electrification2.Indicator1
    fill_in "Tenth Plan", with: @programmes_for_electrification2.Tenth_Plan
    fill_in "Total", with: @programmes_for_electrification2.Total
    fill_in "Twelfth Plan", with: @programmes_for_electrification2.Twelfth_Plan
    fill_in "Under Ddg", with: @programmes_for_electrification2.Under_DDG
    click_on "Create Programmes for electrification2"

    assert_text "Programmes for electrification2 was successfully created"
    click_on "Back"
  end

  test "updating a Programmes for electrification2" do
    visit programmes_for_electrification2s_url
    click_on "Edit", match: :first

    fill_in "Agencies", with: @programmes_for_electrification2.Agencies
    fill_in "Ddg Converted Into Uev", with: @programmes_for_electrification2.DDG_converted_into_UEV
    fill_in "Eleventh Plan", with: @programmes_for_electrification2.Eleventh_Plan
    fill_in "Eleventh Plan Phase Ii", with: @programmes_for_electrification2.Eleventh_Plan_Phase_II
    fill_in "Indicator", with: @programmes_for_electrification2.Indicator
    fill_in "Indicator1", with: @programmes_for_electrification2.Indicator1
    fill_in "Tenth Plan", with: @programmes_for_electrification2.Tenth_Plan
    fill_in "Total", with: @programmes_for_electrification2.Total
    fill_in "Twelfth Plan", with: @programmes_for_electrification2.Twelfth_Plan
    fill_in "Under Ddg", with: @programmes_for_electrification2.Under_DDG
    click_on "Update Programmes for electrification2"

    assert_text "Programmes for electrification2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Programmes for electrification2" do
    visit programmes_for_electrification2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Programmes for electrification2 was successfully destroyed"
  end
end
