require 'test_helper'

class Irrigation7sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @irrigation7 = irrigation7s(:one)
  end

  test "should get index" do
    get irrigation7s_url
    assert_response :success
  end

  test "should get new" do
    get new_irrigation7_url
    assert_response :success
  end

  test "should create irrigation7" do
    assert_difference('Irrigation7.count') do
      post irrigation7s_url, params: { irrigation7: { Creation_of_Additional_Irrigation_Potential_in_lakh_ha: @irrigation7.Creation_of_Additional_Irrigation_Potential_in_lakh_ha, Financial_Requirement_in_Rs_crores: @irrigation7.Financial_Requirement_in_Rs_crores, Restoration_of_Lost_irrigation_Potential_in_lakh_ha: @irrigation7.Restoration_of_Lost_irrigation_Potential_in_lakh_ha, Scheme: @irrigation7.Scheme } }
    end

    assert_redirected_to irrigation7_url(Irrigation7.last)
  end

  test "should show irrigation7" do
    get irrigation7_url(@irrigation7)
    assert_response :success
  end

  test "should get edit" do
    get edit_irrigation7_url(@irrigation7)
    assert_response :success
  end

  test "should update irrigation7" do
    patch irrigation7_url(@irrigation7), params: { irrigation7: { Creation_of_Additional_Irrigation_Potential_in_lakh_ha: @irrigation7.Creation_of_Additional_Irrigation_Potential_in_lakh_ha, Financial_Requirement_in_Rs_crores: @irrigation7.Financial_Requirement_in_Rs_crores, Restoration_of_Lost_irrigation_Potential_in_lakh_ha: @irrigation7.Restoration_of_Lost_irrigation_Potential_in_lakh_ha, Scheme: @irrigation7.Scheme } }
    assert_redirected_to irrigation7_url(@irrigation7)
  end

  test "should destroy irrigation7" do
    assert_difference('Irrigation7.count', -1) do
      delete irrigation7_url(@irrigation7)
    end

    assert_redirected_to irrigation7s_url
  end
end
