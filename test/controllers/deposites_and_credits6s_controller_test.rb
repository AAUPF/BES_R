require 'test_helper'

class DepositesAndCredits6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deposites_and_credits6 = deposites_and_credits6s(:one)
  end

  test "should get index" do
    get deposites_and_credits6s_url
    assert_response :success
  end

  test "should get new" do
    get new_deposites_and_credits6_url
    assert_response :success
  end

  test "should create deposites_and_credits6" do
    assert_difference('DepositesAndCredits6.count') do
      post deposites_and_credits6s_url, params: { deposites_and_credits6: { 2013-14: @deposites_and_credits6.2013-14, 2014-15: @deposites_and_credits6.2014-15, 2015-16: @deposites_and_credits6.2015-16, 2016-17: @deposites_and_credits6.2016-17, 2017_18_upto_Sep_2017: @deposites_and_credits6.2017_18_upto_Sep_2017, Indicator: @deposites_and_credits6.Indicator, Number_of_Branches: @deposites_and_credits6.Number_of_Branches, Sector: @deposites_and_credits6.Sector } }
    end

    assert_redirected_to deposites_and_credits6_url(DepositesAndCredits6.last)
  end

  test "should show deposites_and_credits6" do
    get deposites_and_credits6_url(@deposites_and_credits6)
    assert_response :success
  end

  test "should get edit" do
    get edit_deposites_and_credits6_url(@deposites_and_credits6)
    assert_response :success
  end

  test "should update deposites_and_credits6" do
    patch deposites_and_credits6_url(@deposites_and_credits6), params: { deposites_and_credits6: { 2013-14: @deposites_and_credits6.2013-14, 2014-15: @deposites_and_credits6.2014-15, 2015-16: @deposites_and_credits6.2015-16, 2016-17: @deposites_and_credits6.2016-17, 2017_18_upto_Sep_2017: @deposites_and_credits6.2017_18_upto_Sep_2017, Indicator: @deposites_and_credits6.Indicator, Number_of_Branches: @deposites_and_credits6.Number_of_Branches, Sector: @deposites_and_credits6.Sector } }
    assert_redirected_to deposites_and_credits6_url(@deposites_and_credits6)
  end

  test "should destroy deposites_and_credits6" do
    assert_difference('DepositesAndCredits6.count', -1) do
      delete deposites_and_credits6_url(@deposites_and_credits6)
    end

    assert_redirected_to deposites_and_credits6s_url
  end
end
