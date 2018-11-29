require 'test_helper'

class MicroFinance2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @micro_finance2 = micro_finance2s(:one)
  end

  test "should get index" do
    get micro_finance2s_url
    assert_response :success
  end

  test "should get new" do
    get new_micro_finance2_url
    assert_response :success
  end

  test "should create micro_finance2" do
    assert_difference('MicroFinance2.count') do
      post micro_finance2s_url, params: { micro_finance2: { Indicators: @micro_finance2.Indicators, Mar-14: @micro_finance2.Mar-14, Mar-15: @micro_finance2.Mar-15, Mar-16: @micro_finance2.Mar-16, Mar-17: @micro_finance2.Mar-17 } }
    end

    assert_redirected_to micro_finance2_url(MicroFinance2.last)
  end

  test "should show micro_finance2" do
    get micro_finance2_url(@micro_finance2)
    assert_response :success
  end

  test "should get edit" do
    get edit_micro_finance2_url(@micro_finance2)
    assert_response :success
  end

  test "should update micro_finance2" do
    patch micro_finance2_url(@micro_finance2), params: { micro_finance2: { Indicators: @micro_finance2.Indicators, Mar-14: @micro_finance2.Mar-14, Mar-15: @micro_finance2.Mar-15, Mar-16: @micro_finance2.Mar-16, Mar-17: @micro_finance2.Mar-17 } }
    assert_redirected_to micro_finance2_url(@micro_finance2)
  end

  test "should destroy micro_finance2" do
    assert_difference('MicroFinance2.count', -1) do
      delete micro_finance2_url(@micro_finance2)
    end

    assert_redirected_to micro_finance2s_url
  end
end
