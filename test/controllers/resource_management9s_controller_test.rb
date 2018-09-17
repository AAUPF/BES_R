require 'test_helper'

class ResourceManagement9sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resource_management9 = resource_management9s(:one)
  end

  test "should get index" do
    get resource_management9s_url
    assert_response :success
  end

  test "should get new" do
    get new_resource_management9_url
    assert_response :success
  end

  test "should create resource_management9" do
    assert_difference('ResourceManagement9.count') do
      post resource_management9s_url, params: { resource_management9: { Actual_Receipts: @resource_management9.Actual_Receipts, Budget_Estimate: @resource_management9.Budget_Estimate, Revenue_Sources: @resource_management9.Revenue_Sources, Variation_Excess_or_Shortfall_in_Amount: @resource_management9.Variation_Excess_or_Shortfall_in_Amount, Variation_Excess_or_Shortfall_in_Percentage: @resource_management9.Variation_Excess_or_Shortfall_in_Percentage } }
    end

    assert_redirected_to resource_management9_url(ResourceManagement9.last)
  end

  test "should show resource_management9" do
    get resource_management9_url(@resource_management9)
    assert_response :success
  end

  test "should get edit" do
    get edit_resource_management9_url(@resource_management9)
    assert_response :success
  end

  test "should update resource_management9" do
    patch resource_management9_url(@resource_management9), params: { resource_management9: { Actual_Receipts: @resource_management9.Actual_Receipts, Budget_Estimate: @resource_management9.Budget_Estimate, Revenue_Sources: @resource_management9.Revenue_Sources, Variation_Excess_or_Shortfall_in_Amount: @resource_management9.Variation_Excess_or_Shortfall_in_Amount, Variation_Excess_or_Shortfall_in_Percentage: @resource_management9.Variation_Excess_or_Shortfall_in_Percentage } }
    assert_redirected_to resource_management9_url(@resource_management9)
  end

  test "should destroy resource_management9" do
    assert_difference('ResourceManagement9.count', -1) do
      delete resource_management9_url(@resource_management9)
    end

    assert_redirected_to resource_management9s_url
  end
end
