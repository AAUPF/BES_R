require 'test_helper'

class ProgrammesForElectrification2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @programmes_for_electrification2 = programmes_for_electrification2s(:one)
  end

  test "should get index" do
    get programmes_for_electrification2s_url
    assert_response :success
  end

  test "should get new" do
    get new_programmes_for_electrification2_url
    assert_response :success
  end

  test "should create programmes_for_electrification2" do
    assert_difference('ProgrammesForElectrification2.count') do
      post programmes_for_electrification2s_url, params: { programmes_for_electrification2: { Agencies: @programmes_for_electrification2.Agencies, DDG_converted_into_UEV: @programmes_for_electrification2.DDG_converted_into_UEV, Eleventh_Plan: @programmes_for_electrification2.Eleventh_Plan, Eleventh_Plan_Phase_II: @programmes_for_electrification2.Eleventh_Plan_Phase_II, Indicator: @programmes_for_electrification2.Indicator, Indicator1: @programmes_for_electrification2.Indicator1, Tenth_Plan: @programmes_for_electrification2.Tenth_Plan, Total: @programmes_for_electrification2.Total, Twelfth_Plan: @programmes_for_electrification2.Twelfth_Plan, Under_DDG: @programmes_for_electrification2.Under_DDG } }
    end

    assert_redirected_to programmes_for_electrification2_url(ProgrammesForElectrification2.last)
  end

  test "should show programmes_for_electrification2" do
    get programmes_for_electrification2_url(@programmes_for_electrification2)
    assert_response :success
  end

  test "should get edit" do
    get edit_programmes_for_electrification2_url(@programmes_for_electrification2)
    assert_response :success
  end

  test "should update programmes_for_electrification2" do
    patch programmes_for_electrification2_url(@programmes_for_electrification2), params: { programmes_for_electrification2: { Agencies: @programmes_for_electrification2.Agencies, DDG_converted_into_UEV: @programmes_for_electrification2.DDG_converted_into_UEV, Eleventh_Plan: @programmes_for_electrification2.Eleventh_Plan, Eleventh_Plan_Phase_II: @programmes_for_electrification2.Eleventh_Plan_Phase_II, Indicator: @programmes_for_electrification2.Indicator, Indicator1: @programmes_for_electrification2.Indicator1, Tenth_Plan: @programmes_for_electrification2.Tenth_Plan, Total: @programmes_for_electrification2.Total, Twelfth_Plan: @programmes_for_electrification2.Twelfth_Plan, Under_DDG: @programmes_for_electrification2.Under_DDG } }
    assert_redirected_to programmes_for_electrification2_url(@programmes_for_electrification2)
  end

  test "should destroy programmes_for_electrification2" do
    assert_difference('ProgrammesForElectrification2.count', -1) do
      delete programmes_for_electrification2_url(@programmes_for_electrification2)
    end

    assert_redirected_to programmes_for_electrification2s_url
  end
end
