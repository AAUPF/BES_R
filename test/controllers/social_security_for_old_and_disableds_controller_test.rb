require 'test_helper'

class SocialSecurityForOldAndDisabledsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_security_for_old_and_disabled = social_security_for_old_and_disableds(:one)
  end

  test "should get index" do
    get social_security_for_old_and_disableds_url
    assert_response :success
  end

  test "should get new" do
    get new_social_security_for_old_and_disabled_url
    assert_response :success
  end

  test "should create social_security_for_old_and_disabled" do
    assert_difference('SocialSecurityForOldAndDisabled.count') do
      post social_security_for_old_and_disableds_url, params: { social_security_for_old_and_disabled: { Budget_Outlay: @social_security_for_old_and_disabled.Budget_Outlay, Expenditure: @social_security_for_old_and_disabled.Expenditure, Name_of_the_Scheme: @social_security_for_old_and_disabled.Name_of_the_Scheme, Physical_Achievement: @social_security_for_old_and_disabled.Physical_Achievement, Year: @social_security_for_old_and_disabled.Year } }
    end

    assert_redirected_to social_security_for_old_and_disabled_url(SocialSecurityForOldAndDisabled.last)
  end

  test "should show social_security_for_old_and_disabled" do
    get social_security_for_old_and_disabled_url(@social_security_for_old_and_disabled)
    assert_response :success
  end

  test "should get edit" do
    get edit_social_security_for_old_and_disabled_url(@social_security_for_old_and_disabled)
    assert_response :success
  end

  test "should update social_security_for_old_and_disabled" do
    patch social_security_for_old_and_disabled_url(@social_security_for_old_and_disabled), params: { social_security_for_old_and_disabled: { Budget_Outlay: @social_security_for_old_and_disabled.Budget_Outlay, Expenditure: @social_security_for_old_and_disabled.Expenditure, Name_of_the_Scheme: @social_security_for_old_and_disabled.Name_of_the_Scheme, Physical_Achievement: @social_security_for_old_and_disabled.Physical_Achievement, Year: @social_security_for_old_and_disabled.Year } }
    assert_redirected_to social_security_for_old_and_disabled_url(@social_security_for_old_and_disabled)
  end

  test "should destroy social_security_for_old_and_disabled" do
    assert_difference('SocialSecurityForOldAndDisabled.count', -1) do
      delete social_security_for_old_and_disabled_url(@social_security_for_old_and_disabled)
    end

    assert_redirected_to social_security_for_old_and_disableds_url
  end
end
