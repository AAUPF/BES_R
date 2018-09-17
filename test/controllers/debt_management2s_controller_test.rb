require 'test_helper'

class DebtManagement2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @debt_management2 = debt_management2s(:one)
  end

  test "should get index" do
    get debt_management2s_url
    assert_response :success
  end

  test "should get new" do
    get new_debt_management2_url
    assert_response :success
  end

  test "should create debt_management2" do
    assert_difference('DebtManagement2.count') do
      post debt_management2s_url, params: { debt_management2: { 2015-16: @debt_management2.2015-16, 2016-17: @debt_management2.2016-17, 2017_from_2016: @debt_management2.2017_from_2016, 31_03_17: @debt_management2.31_03_17, 31_03_2016: @debt_management2.31_03_2016, 31_03_2017: @debt_management2.31_03_2017, Sector: @debt_management2.Sector } }
    end

    assert_redirected_to debt_management2_url(DebtManagement2.last)
  end

  test "should show debt_management2" do
    get debt_management2_url(@debt_management2)
    assert_response :success
  end

  test "should get edit" do
    get edit_debt_management2_url(@debt_management2)
    assert_response :success
  end

  test "should update debt_management2" do
    patch debt_management2_url(@debt_management2), params: { debt_management2: { 2015-16: @debt_management2.2015-16, 2016-17: @debt_management2.2016-17, 2017_from_2016: @debt_management2.2017_from_2016, 31_03_17: @debt_management2.31_03_17, 31_03_2016: @debt_management2.31_03_2016, 31_03_2017: @debt_management2.31_03_2017, Sector: @debt_management2.Sector } }
    assert_redirected_to debt_management2_url(@debt_management2)
  end

  test "should destroy debt_management2" do
    assert_difference('DebtManagement2.count', -1) do
      delete debt_management2_url(@debt_management2)
    end

    assert_redirected_to debt_management2s_url
  end
end
