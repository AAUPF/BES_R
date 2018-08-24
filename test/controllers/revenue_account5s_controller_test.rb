require 'test_helper'

class RevenueAccount5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @revenue_account5 = revenue_account5s(:one)
  end

  test "should get index" do
    get revenue_account5s_url
    assert_response :success
  end

  test "should get new" do
    get new_revenue_account5_url
    assert_response :success
  end

  test "should create revenue_account5" do
    assert_difference('RevenueAccount5.count') do
      post revenue_account5s_url, params: { revenue_account5: { Amount: @revenue_account5.Amount, Transfer_of_Resources: @revenue_account5.Transfer_of_Resources, Year: @revenue_account5.Year } }
    end

    assert_redirected_to revenue_account5_url(RevenueAccount5.last)
  end

  test "should show revenue_account5" do
    get revenue_account5_url(@revenue_account5)
    assert_response :success
  end

  test "should get edit" do
    get edit_revenue_account5_url(@revenue_account5)
    assert_response :success
  end

  test "should update revenue_account5" do
    patch revenue_account5_url(@revenue_account5), params: { revenue_account5: { Amount: @revenue_account5.Amount, Transfer_of_Resources: @revenue_account5.Transfer_of_Resources, Year: @revenue_account5.Year } }
    assert_redirected_to revenue_account5_url(@revenue_account5)
  end

  test "should destroy revenue_account5" do
    assert_difference('RevenueAccount5.count', -1) do
      delete revenue_account5_url(@revenue_account5)
    end

    assert_redirected_to revenue_account5s_url
  end
end
