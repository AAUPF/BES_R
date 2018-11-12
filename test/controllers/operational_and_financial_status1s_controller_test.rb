require 'test_helper'

class OperationalAndFinancialStatus1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operational_and_financial_status1 = operational_and_financial_status1s(:one)
  end

  test "should get index" do
    get operational_and_financial_status1s_url
    assert_response :success
  end

  test "should get new" do
    get new_operational_and_financial_status1_url
    assert_response :success
  end

  test "should create operational_and_financial_status1" do
    assert_difference('OperationalAndFinancialStatus1.count') do
      post operational_and_financial_status1s_url, params: { operational_and_financial_status1: { Item: @operational_and_financial_status1.Item, NBPDCL: @operational_and_financial_status1.NBPDCL, SBPDCL: @operational_and_financial_status1.SBPDCL, Year: @operational_and_financial_status1.Year } }
    end

    assert_redirected_to operational_and_financial_status1_url(OperationalAndFinancialStatus1.last)
  end

  test "should show operational_and_financial_status1" do
    get operational_and_financial_status1_url(@operational_and_financial_status1)
    assert_response :success
  end

  test "should get edit" do
    get edit_operational_and_financial_status1_url(@operational_and_financial_status1)
    assert_response :success
  end

  test "should update operational_and_financial_status1" do
    patch operational_and_financial_status1_url(@operational_and_financial_status1), params: { operational_and_financial_status1: { Item: @operational_and_financial_status1.Item, NBPDCL: @operational_and_financial_status1.NBPDCL, SBPDCL: @operational_and_financial_status1.SBPDCL, Year: @operational_and_financial_status1.Year } }
    assert_redirected_to operational_and_financial_status1_url(@operational_and_financial_status1)
  end

  test "should destroy operational_and_financial_status1" do
    assert_difference('OperationalAndFinancialStatus1.count', -1) do
      delete operational_and_financial_status1_url(@operational_and_financial_status1)
    end

    assert_redirected_to operational_and_financial_status1s_url
  end
end
