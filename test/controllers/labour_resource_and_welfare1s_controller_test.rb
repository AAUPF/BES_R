require 'test_helper'

class LabourResourceAndWelfare1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @labour_resource_and_welfare1 = labour_resource_and_welfare1s(:one)
  end

  test "should get index" do
    get labour_resource_and_welfare1s_url
    assert_response :success
  end

  test "should get new" do
    get new_labour_resource_and_welfare1_url
    assert_response :success
  end

  test "should create labour_resource_and_welfare1" do
    assert_difference('LabourResourceAndWelfare1.count') do
      post labour_resource_and_welfare1s_url, params: { labour_resource_and_welfare1: { Agricultural_Labourers: @labour_resource_and_welfare1.Agricultural_Labourers, Cultivators: @labour_resource_and_welfare1.Cultivators, Household_Industry_Workers: @labour_resource_and_welfare1.Household_Industry_Workers, Other_Workers: @labour_resource_and_welfare1.Other_Workers, State: @labour_resource_and_welfare1.State, Total: @labour_resource_and_welfare1.Total, Total_Number_of_Workers: @labour_resource_and_welfare1.Total_Number_of_Workers } }
    end

    assert_redirected_to labour_resource_and_welfare1_url(LabourResourceAndWelfare1.last)
  end

  test "should show labour_resource_and_welfare1" do
    get labour_resource_and_welfare1_url(@labour_resource_and_welfare1)
    assert_response :success
  end

  test "should get edit" do
    get edit_labour_resource_and_welfare1_url(@labour_resource_and_welfare1)
    assert_response :success
  end

  test "should update labour_resource_and_welfare1" do
    patch labour_resource_and_welfare1_url(@labour_resource_and_welfare1), params: { labour_resource_and_welfare1: { Agricultural_Labourers: @labour_resource_and_welfare1.Agricultural_Labourers, Cultivators: @labour_resource_and_welfare1.Cultivators, Household_Industry_Workers: @labour_resource_and_welfare1.Household_Industry_Workers, Other_Workers: @labour_resource_and_welfare1.Other_Workers, State: @labour_resource_and_welfare1.State, Total: @labour_resource_and_welfare1.Total, Total_Number_of_Workers: @labour_resource_and_welfare1.Total_Number_of_Workers } }
    assert_redirected_to labour_resource_and_welfare1_url(@labour_resource_and_welfare1)
  end

  test "should destroy labour_resource_and_welfare1" do
    assert_difference('LabourResourceAndWelfare1.count', -1) do
      delete labour_resource_and_welfare1_url(@labour_resource_and_welfare1)
    end

    assert_redirected_to labour_resource_and_welfare1s_url
  end
end
