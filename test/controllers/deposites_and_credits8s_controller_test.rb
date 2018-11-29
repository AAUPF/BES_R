require 'test_helper'

class DepositesAndCredits8sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deposites_and_credits8 = deposites_and_credits8s(:one)
  end

  test "should get index" do
    get deposites_and_credits8s_url
    assert_response :success
  end

  test "should get new" do
    get new_deposites_and_credits8_url
    assert_response :success
  end

  test "should create deposites_and_credits8" do
    assert_difference('DepositesAndCredits8.count') do
      post deposites_and_credits8s_url, params: { deposites_and_credits8: { 2014-15: @deposites_and_credits8.2014-15, 2015-16: @deposites_and_credits8.2015-16, 2016-17: @deposites_and_credits8.2016-17, 2017_18_upto_Sep_2017: @deposites_and_credits8.2017_18_upto_Sep_2017, Indicator: @deposites_and_credits8.Indicator, Sector: @deposites_and_credits8.Sector } }
    end

    assert_redirected_to deposites_and_credits8_url(DepositesAndCredits8.last)
  end

  test "should show deposites_and_credits8" do
    get deposites_and_credits8_url(@deposites_and_credits8)
    assert_response :success
  end

  test "should get edit" do
    get edit_deposites_and_credits8_url(@deposites_and_credits8)
    assert_response :success
  end

  test "should update deposites_and_credits8" do
    patch deposites_and_credits8_url(@deposites_and_credits8), params: { deposites_and_credits8: { 2014-15: @deposites_and_credits8.2014-15, 2015-16: @deposites_and_credits8.2015-16, 2016-17: @deposites_and_credits8.2016-17, 2017_18_upto_Sep_2017: @deposites_and_credits8.2017_18_upto_Sep_2017, Indicator: @deposites_and_credits8.Indicator, Sector: @deposites_and_credits8.Sector } }
    assert_redirected_to deposites_and_credits8_url(@deposites_and_credits8)
  end

  test "should destroy deposites_and_credits8" do
    assert_difference('DepositesAndCredits8.count', -1) do
      delete deposites_and_credits8_url(@deposites_and_credits8)
    end

    assert_redirected_to deposites_and_credits8s_url
  end
end
