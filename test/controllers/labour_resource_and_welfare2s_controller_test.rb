require 'test_helper'

class LabourResourceAndWelfare2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @labour_resource_and_welfare2 = labour_resource_and_welfare2s(:one)
  end

  test "should get index" do
    get labour_resource_and_welfare2s_url
    assert_response :success
  end

  test "should get new" do
    get new_labour_resource_and_welfare2_url
    assert_response :success
  end

  test "should create labour_resource_and_welfare2" do
    assert_difference('LabourResourceAndWelfare2.count') do
      post labour_resource_and_welfare2s_url, params: { labour_resource_and_welfare2: { Budget_outlay: @labour_resource_and_welfare2.Budget_outlay, Financial_Achievement: @labour_resource_and_welfare2.Financial_Achievement, Programme: @labour_resource_and_welfare2.Programme, Year: @labour_resource_and_welfare2.Year } }
    end

    assert_redirected_to labour_resource_and_welfare2_url(LabourResourceAndWelfare2.last)
  end

  test "should show labour_resource_and_welfare2" do
    get labour_resource_and_welfare2_url(@labour_resource_and_welfare2)
    assert_response :success
  end

  test "should get edit" do
    get edit_labour_resource_and_welfare2_url(@labour_resource_and_welfare2)
    assert_response :success
  end

  test "should update labour_resource_and_welfare2" do
    patch labour_resource_and_welfare2_url(@labour_resource_and_welfare2), params: { labour_resource_and_welfare2: { Budget_outlay: @labour_resource_and_welfare2.Budget_outlay, Financial_Achievement: @labour_resource_and_welfare2.Financial_Achievement, Programme: @labour_resource_and_welfare2.Programme, Year: @labour_resource_and_welfare2.Year } }
    assert_redirected_to labour_resource_and_welfare2_url(@labour_resource_and_welfare2)
  end

  test "should destroy labour_resource_and_welfare2" do
    assert_difference('LabourResourceAndWelfare2.count', -1) do
      delete labour_resource_and_welfare2_url(@labour_resource_and_welfare2)
    end

    assert_redirected_to labour_resource_and_welfare2s_url
  end
end
