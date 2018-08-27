require 'test_helper'

class AnnualStateDomesticProduct3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @annual_state_domestic_product3 = annual_state_domestic_product3s(:one)
  end

  test "should get index" do
    get annual_state_domestic_product3s_url
    assert_response :success
  end

  test "should get new" do
    get new_annual_state_domestic_product3_url
    assert_response :success
  end

  test "should create annual_state_domestic_product3" do
    assert_difference('AnnualStateDomesticProduct3.count') do
      post annual_state_domestic_product3s_url, params: { annual_state_domestic_product3: { 2011-12: @annual_state_domestic_product3.2011-12, 2012-13: @annual_state_domestic_product3.2012-13, 2013-14: @annual_state_domestic_product3.2013-14, 2014-15: @annual_state_domestic_product3.2014-15, 2015-16: @annual_state_domestic_product3.2015-16, 2016-17: @annual_state_domestic_product3.2016-17, Sector: @annual_state_domestic_product3.Sector } }
    end

    assert_redirected_to annual_state_domestic_product3_url(AnnualStateDomesticProduct3.last)
  end

  test "should show annual_state_domestic_product3" do
    get annual_state_domestic_product3_url(@annual_state_domestic_product3)
    assert_response :success
  end

  test "should get edit" do
    get edit_annual_state_domestic_product3_url(@annual_state_domestic_product3)
    assert_response :success
  end

  test "should update annual_state_domestic_product3" do
    patch annual_state_domestic_product3_url(@annual_state_domestic_product3), params: { annual_state_domestic_product3: { 2011-12: @annual_state_domestic_product3.2011-12, 2012-13: @annual_state_domestic_product3.2012-13, 2013-14: @annual_state_domestic_product3.2013-14, 2014-15: @annual_state_domestic_product3.2014-15, 2015-16: @annual_state_domestic_product3.2015-16, 2016-17: @annual_state_domestic_product3.2016-17, Sector: @annual_state_domestic_product3.Sector } }
    assert_redirected_to annual_state_domestic_product3_url(@annual_state_domestic_product3)
  end

  test "should destroy annual_state_domestic_product3" do
    assert_difference('AnnualStateDomesticProduct3.count', -1) do
      delete annual_state_domestic_product3_url(@annual_state_domestic_product3)
    end

    assert_redirected_to annual_state_domestic_product3s_url
  end
end
