require "application_system_test_case"

class ProgrammesForElectrification1sTest < ApplicationSystemTestCase
  setup do
    @programmes_for_electrification1 = programmes_for_electrification1s(:one)
  end

  test "visiting the index" do
    visit programmes_for_electrification1s_url
    assert_selector "h1", text: "Programmes For Electrification1s"
  end

  test "creating a Programmes for electrification1" do
    visit programmes_for_electrification1s_url
    click_on "New Programmes For Electrification1"

    fill_in "Expenditure Incurred", with: @programmes_for_electrification1.Expenditure_incurred
    fill_in "Outlay", with: @programmes_for_electrification1.Outlay
    fill_in "Project Component Under R Apdrp", with: @programmes_for_electrification1.Project_Component_under_R_APDRP
    click_on "Create Programmes for electrification1"

    assert_text "Programmes for electrification1 was successfully created"
    click_on "Back"
  end

  test "updating a Programmes for electrification1" do
    visit programmes_for_electrification1s_url
    click_on "Edit", match: :first

    fill_in "Expenditure Incurred", with: @programmes_for_electrification1.Expenditure_incurred
    fill_in "Outlay", with: @programmes_for_electrification1.Outlay
    fill_in "Project Component Under R Apdrp", with: @programmes_for_electrification1.Project_Component_under_R_APDRP
    click_on "Update Programmes for electrification1"

    assert_text "Programmes for electrification1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Programmes for electrification1" do
    visit programmes_for_electrification1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Programmes for electrification1 was successfully destroyed"
  end
end
