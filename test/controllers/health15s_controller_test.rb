require 'test_helper'

class Health15sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health15 = health15s(:one)
  end

  test "should get index" do
    get health15s_url
    assert_response :success
  end

  test "should get new" do
    get new_health15_url
    assert_response :success
  end

  test "should create health15" do
    assert_difference('Health15.count') do
      post health15s_url, params: { health15: { APHC: @health15.APHC, DH_RH_SDH_PHC_HSC_APHC: @health15.DH_RH_SDH_PHC_HSC_APHC, District_Hospital: @health15.District_Hospital, Districts: @health15.Districts, Health_SubCentre: @health15.Health_SubCentre, PHC: @health15.PHC, Population_Health_Institution: @health15.Population_Health_Institution, Referral_Hospital: @health15.Referral_Hospital, SDH: @health15.SDH } }
    end

    assert_redirected_to health15_url(Health15.last)
  end

  test "should show health15" do
    get health15_url(@health15)
    assert_response :success
  end

  test "should get edit" do
    get edit_health15_url(@health15)
    assert_response :success
  end

  test "should update health15" do
    patch health15_url(@health15), params: { health15: { APHC: @health15.APHC, DH_RH_SDH_PHC_HSC_APHC: @health15.DH_RH_SDH_PHC_HSC_APHC, District_Hospital: @health15.District_Hospital, Districts: @health15.Districts, Health_SubCentre: @health15.Health_SubCentre, PHC: @health15.PHC, Population_Health_Institution: @health15.Population_Health_Institution, Referral_Hospital: @health15.Referral_Hospital, SDH: @health15.SDH } }
    assert_redirected_to health15_url(@health15)
  end

  test "should destroy health15" do
    assert_difference('Health15.count', -1) do
      delete health15_url(@health15)
    end

    assert_redirected_to health15s_url
  end
end
