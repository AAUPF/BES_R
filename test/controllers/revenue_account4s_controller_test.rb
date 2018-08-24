require 'test_helper'

class RevenueAccount4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @revenue_account4 = revenue_account4s(:one)
  end

  test "should get index" do
    get revenue_account4s_url
    assert_response :success
  end

  test "should get new" do
    get new_revenue_account4_url
    assert_response :success
  end

  test "should create revenue_account4" do
    assert_difference('RevenueAccount4.count') do
      post revenue_account4s_url, params: { revenue_account4: { Amount: @revenue_account4.Amount, Revenue: @revenue_account4.Revenue, Year: @revenue_account4.Year } }
    end

    assert_redirected_to revenue_account4_url(RevenueAccount4.last)
  end

  test "should show revenue_account4" do
    get revenue_account4_url(@revenue_account4)
    assert_response :success
  end

  test "should get edit" do
    get edit_revenue_account4_url(@revenue_account4)
    assert_response :success
  end

  test "should update revenue_account4" do
    patch revenue_account4_url(@revenue_account4), params: { revenue_account4: { Amount: @revenue_account4.Amount, Revenue: @revenue_account4.Revenue, Year: @revenue_account4.Year } }
    assert_redirected_to revenue_account4_url(@revenue_account4)
  end

  test "should destroy revenue_account4" do
    assert_difference('RevenueAccount4.count', -1) do
      delete revenue_account4_url(@revenue_account4)
    end

    assert_redirected_to revenue_account4s_url
  end
end
