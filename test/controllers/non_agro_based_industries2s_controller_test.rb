require 'test_helper'

class NonAgroBasedIndustries2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @non_agro_based_industries2 = non_agro_based_industries2s(:one)
  end

  test "should get index" do
    get non_agro_based_industries2s_url
    assert_response :success
  end

  test "should get new" do
    get new_non_agro_based_industries2_url
    assert_response :success
  end

  test "should create non_agro_based_industries2" do
    assert_difference('NonAgroBasedIndustries2.count') do
      post non_agro_based_industries2s_url, params: { non_agro_based_industries2: { Districts: @non_agro_based_industries2.Districts, Handlooms_on_which_UID_No_has_been_engraved: @non_agro_based_industries2.Handlooms_on_which_UID_No_has_been_engraved, Pati_looms_on_which_UID_No_has_been_engraved: @non_agro_based_industries2.Pati_looms_on_which_UID_No_has_been_engraved, Sanctioned_amount_in_Rs_lakh: @non_agro_based_industries2.Sanctioned_amount_in_Rs_lakh } }
    end

    assert_redirected_to non_agro_based_industries2_url(NonAgroBasedIndustries2.last)
  end

  test "should show non_agro_based_industries2" do
    get non_agro_based_industries2_url(@non_agro_based_industries2)
    assert_response :success
  end

  test "should get edit" do
    get edit_non_agro_based_industries2_url(@non_agro_based_industries2)
    assert_response :success
  end

  test "should update non_agro_based_industries2" do
    patch non_agro_based_industries2_url(@non_agro_based_industries2), params: { non_agro_based_industries2: { Districts: @non_agro_based_industries2.Districts, Handlooms_on_which_UID_No_has_been_engraved: @non_agro_based_industries2.Handlooms_on_which_UID_No_has_been_engraved, Pati_looms_on_which_UID_No_has_been_engraved: @non_agro_based_industries2.Pati_looms_on_which_UID_No_has_been_engraved, Sanctioned_amount_in_Rs_lakh: @non_agro_based_industries2.Sanctioned_amount_in_Rs_lakh } }
    assert_redirected_to non_agro_based_industries2_url(@non_agro_based_industries2)
  end

  test "should destroy non_agro_based_industries2" do
    assert_difference('NonAgroBasedIndustries2.count', -1) do
      delete non_agro_based_industries2_url(@non_agro_based_industries2)
    end

    assert_redirected_to non_agro_based_industries2s_url
  end
end
