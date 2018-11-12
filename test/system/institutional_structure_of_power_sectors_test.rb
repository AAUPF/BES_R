require "application_system_test_case"

class InstitutionalStructureOfPowerSectorsTest < ApplicationSystemTestCase
  setup do
    @institutional_structure_of_power_sector = institutional_structure_of_power_sectors(:one)
  end

  test "visiting the index" do
    visit institutional_structure_of_power_sectors_url
    assert_selector "h1", text: "Institutional Structure Of Power Sectors"
  end

  test "creating a Institutional structure of power sector" do
    visit institutional_structure_of_power_sectors_url
    click_on "New Institutional Structure Of Power Sector"

    fill_in "Brgf", with: @institutional_structure_of_power_sector.BRGF
    fill_in "Bshpc Ridf", with: @institutional_structure_of_power_sector.BSHPC_RIDF
    fill_in "Eap", with: @institutional_structure_of_power_sector.EAP
    fill_in "Mukhya Mantri Vidyut Sambandh Nishchay Yojna", with: @institutional_structure_of_power_sector.Mukhya_Mantri_Vidyut_Sambandh_Nishchay_Yojna
    fill_in "State Plan Breda", with: @institutional_structure_of_power_sector.State_Plan_BREDA
    fill_in "State Plan Bshpc", with: @institutional_structure_of_power_sector.State_Plan_BSHPC
    fill_in "State Plan Bsphcl", with: @institutional_structure_of_power_sector.State_Plan_BSPHCL
    fill_in "State Plan Distribution", with: @institutional_structure_of_power_sector.State_Plan_Distribution
    fill_in "State Plan Generation", with: @institutional_structure_of_power_sector.State_Plan_Generation
    fill_in "State Plan Transmission", with: @institutional_structure_of_power_sector.State_Plan_Transmission
    fill_in "Total", with: @institutional_structure_of_power_sector.Total
    fill_in "Years", with: @institutional_structure_of_power_sector.Years
    click_on "Create Institutional structure of power sector"

    assert_text "Institutional structure of power sector was successfully created"
    click_on "Back"
  end

  test "updating a Institutional structure of power sector" do
    visit institutional_structure_of_power_sectors_url
    click_on "Edit", match: :first

    fill_in "Brgf", with: @institutional_structure_of_power_sector.BRGF
    fill_in "Bshpc Ridf", with: @institutional_structure_of_power_sector.BSHPC_RIDF
    fill_in "Eap", with: @institutional_structure_of_power_sector.EAP
    fill_in "Mukhya Mantri Vidyut Sambandh Nishchay Yojna", with: @institutional_structure_of_power_sector.Mukhya_Mantri_Vidyut_Sambandh_Nishchay_Yojna
    fill_in "State Plan Breda", with: @institutional_structure_of_power_sector.State_Plan_BREDA
    fill_in "State Plan Bshpc", with: @institutional_structure_of_power_sector.State_Plan_BSHPC
    fill_in "State Plan Bsphcl", with: @institutional_structure_of_power_sector.State_Plan_BSPHCL
    fill_in "State Plan Distribution", with: @institutional_structure_of_power_sector.State_Plan_Distribution
    fill_in "State Plan Generation", with: @institutional_structure_of_power_sector.State_Plan_Generation
    fill_in "State Plan Transmission", with: @institutional_structure_of_power_sector.State_Plan_Transmission
    fill_in "Total", with: @institutional_structure_of_power_sector.Total
    fill_in "Years", with: @institutional_structure_of_power_sector.Years
    click_on "Update Institutional structure of power sector"

    assert_text "Institutional structure of power sector was successfully updated"
    click_on "Back"
  end

  test "destroying a Institutional structure of power sector" do
    visit institutional_structure_of_power_sectors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Institutional structure of power sector was successfully destroyed"
  end
end
