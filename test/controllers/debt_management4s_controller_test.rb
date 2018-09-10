require 'test_helper'

class DebtManagement4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @debt_management4 = debt_management4s(:one)
  end

  test "should get index" do
    get debt_management4s_url
    assert_response :success
  end

  test "should get new" do
    get new_debt_management4_url
    assert_response :success
  end

  test "should create debt_management4" do
    assert_difference('DebtManagement4.count') do
      post debt_management4s_url, params: { debt_management4: { 2012-13: @debt_management4.2012-13, 2013-14: @debt_management4.2013-14, 2014-15: @debt_management4.2014-15, 2015-16: @debt_management4.2015-16, 2016-17: @debt_management4.2016-17, 2017-18_BE: @debt_management4.2017-18_BE, Sector: @debt_management4.Sector } }
    end

    assert_redirected_to debt_management4_url(DebtManagement4.last)
  end

  test "should show debt_management4" do
    get debt_management4_url(@debt_management4)
    assert_response :success
  end

  test "should get edit" do
    get edit_debt_management4_url(@debt_management4)
    assert_response :success
  end

  test "should update debt_management4" do
    patch debt_management4_url(@debt_management4), params: { debt_management4: { 2012-13: @debt_management4.2012-13, 2013-14: @debt_management4.2013-14, 2014-15: @debt_management4.2014-15, 2015-16: @debt_management4.2015-16, 2016-17: @debt_management4.2016-17, 2017-18_BE: @debt_management4.2017-18_BE, Sector: @debt_management4.Sector } }
    assert_redirected_to debt_management4_url(@debt_management4)
  end

  test "should destroy debt_management4" do
    assert_difference('DebtManagement4.count', -1) do
      delete debt_management4_url(@debt_management4)
    end

    assert_redirected_to debt_management4s_url
  end
end
