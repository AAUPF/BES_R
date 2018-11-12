require 'test_helper'

class InstitutionalStructureOfPowerSectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @institutional_structure_of_power_sector = institutional_structure_of_power_sectors(:one)
  end

  test "should get index" do
    get institutional_structure_of_power_sectors_url
    assert_response :success
  end

  test "should get new" do
    get new_institutional_structure_of_power_sector_url
    assert_response :success
  end

  test "should create institutional_structure_of_power_sector" do
    assert_difference('InstitutionalStructureOfPowerSector.count') do
      post institutional_structure_of_power_sectors_url, params: { institutional_structure_of_power_sector: { BRGF: @institutional_structure_of_power_sector.BRGF, BSHPC_RIDF: @institutional_structure_of_power_sector.BSHPC_RIDF, EAP: @institutional_structure_of_power_sector.EAP, Mukhya_Mantri_Vidyut_Sambandh_Nishchay_Yojna: @institutional_structure_of_power_sector.Mukhya_Mantri_Vidyut_Sambandh_Nishchay_Yojna, State_Plan_BREDA: @institutional_structure_of_power_sector.State_Plan_BREDA, State_Plan_BSHPC: @institutional_structure_of_power_sector.State_Plan_BSHPC, State_Plan_BSPHCL: @institutional_structure_of_power_sector.State_Plan_BSPHCL, State_Plan_Distribution: @institutional_structure_of_power_sector.State_Plan_Distribution, State_Plan_Generation: @institutional_structure_of_power_sector.State_Plan_Generation, State_Plan_Transmission: @institutional_structure_of_power_sector.State_Plan_Transmission, Total: @institutional_structure_of_power_sector.Total, Years: @institutional_structure_of_power_sector.Years } }
    end

    assert_redirected_to institutional_structure_of_power_sector_url(InstitutionalStructureOfPowerSector.last)
  end

  test "should show institutional_structure_of_power_sector" do
    get institutional_structure_of_power_sector_url(@institutional_structure_of_power_sector)
    assert_response :success
  end

  test "should get edit" do
    get edit_institutional_structure_of_power_sector_url(@institutional_structure_of_power_sector)
    assert_response :success
  end

  test "should update institutional_structure_of_power_sector" do
    patch institutional_structure_of_power_sector_url(@institutional_structure_of_power_sector), params: { institutional_structure_of_power_sector: { BRGF: @institutional_structure_of_power_sector.BRGF, BSHPC_RIDF: @institutional_structure_of_power_sector.BSHPC_RIDF, EAP: @institutional_structure_of_power_sector.EAP, Mukhya_Mantri_Vidyut_Sambandh_Nishchay_Yojna: @institutional_structure_of_power_sector.Mukhya_Mantri_Vidyut_Sambandh_Nishchay_Yojna, State_Plan_BREDA: @institutional_structure_of_power_sector.State_Plan_BREDA, State_Plan_BSHPC: @institutional_structure_of_power_sector.State_Plan_BSHPC, State_Plan_BSPHCL: @institutional_structure_of_power_sector.State_Plan_BSPHCL, State_Plan_Distribution: @institutional_structure_of_power_sector.State_Plan_Distribution, State_Plan_Generation: @institutional_structure_of_power_sector.State_Plan_Generation, State_Plan_Transmission: @institutional_structure_of_power_sector.State_Plan_Transmission, Total: @institutional_structure_of_power_sector.Total, Years: @institutional_structure_of_power_sector.Years } }
    assert_redirected_to institutional_structure_of_power_sector_url(@institutional_structure_of_power_sector)
  end

  test "should destroy institutional_structure_of_power_sector" do
    assert_difference('InstitutionalStructureOfPowerSector.count', -1) do
      delete institutional_structure_of_power_sector_url(@institutional_structure_of_power_sector)
    end

    assert_redirected_to institutional_structure_of_power_sectors_url
  end
end
