require 'test_helper'

class DebtManagement1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @debt_management1 = debt_management1s(:one)
  end

  test "should get index" do
    get debt_management1s_url
    assert_response :success
  end

  test "should get new" do
    get new_debt_management1_url
    assert_response :success
  end

  test "should create debt_management1" do
    assert_difference('DebtManagement1.count') do
      post debt_management1s_url, params: { debt_management1: { 2012-13: @debt_management1.2012-13, 2013-14: @debt_management1.2013-14, 2014-15: @debt_management1.2014-15, 2015-16: @debt_management1.2015-16, 2016-17: @debt_management1.2016-17, 2017-18_BE: @debt_management1.2017-18_BE, Indicator: @debt_management1.Indicator, Sector: @debt_management1.Sector } }
    end

    assert_redirected_to debt_management1_url(DebtManagement1.last)
  end

  test "should show debt_management1" do
    get debt_management1_url(@debt_management1)
    assert_response :success
  end

  test "should get edit" do
    get edit_debt_management1_url(@debt_management1)
    assert_response :success
  end

  test "should update debt_management1" do
    patch debt_management1_url(@debt_management1), params: { debt_management1: { 2012-13: @debt_management1.2012-13, 2013-14: @debt_management1.2013-14, 2014-15: @debt_management1.2014-15, 2015-16: @debt_management1.2015-16, 2016-17: @debt_management1.2016-17, 2017-18_BE: @debt_management1.2017-18_BE, Indicator: @debt_management1.Indicator, Sector: @debt_management1.Sector } }
    assert_redirected_to debt_management1_url(@debt_management1)
  end

  test "should destroy debt_management1" do
    assert_difference('DebtManagement1.count', -1) do
      delete debt_management1_url(@debt_management1)
    end

    assert_redirected_to debt_management1s_url
  end
end
