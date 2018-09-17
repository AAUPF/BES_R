require 'test_helper'

class ResourceManagement10sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resource_management10 = resource_management10s(:one)
  end

  test "should get index" do
    get resource_management10s_url
    assert_response :success
  end

  test "should get new" do
    get new_resource_management10_url
    assert_response :success
  end

  test "should create resource_management10" do
    assert_difference('ResourceManagement10.count') do
      post resource_management10s_url, params: { resource_management10: { Collection: @resource_management10.Collection, Cost_as_Percentage_of_Collection: @resource_management10.Cost_as_Percentage_of_Collection, Expenditure_on_collection: @resource_management10.Expenditure_on_collection, Indicator: @resource_management10.Indicator, Year: @resource_management10.Year } }
    end

    assert_redirected_to resource_management10_url(ResourceManagement10.last)
  end

  test "should show resource_management10" do
    get resource_management10_url(@resource_management10)
    assert_response :success
  end

  test "should get edit" do
    get edit_resource_management10_url(@resource_management10)
    assert_response :success
  end

  test "should update resource_management10" do
    patch resource_management10_url(@resource_management10), params: { resource_management10: { Collection: @resource_management10.Collection, Cost_as_Percentage_of_Collection: @resource_management10.Cost_as_Percentage_of_Collection, Expenditure_on_collection: @resource_management10.Expenditure_on_collection, Indicator: @resource_management10.Indicator, Year: @resource_management10.Year } }
    assert_redirected_to resource_management10_url(@resource_management10)
  end

  test "should destroy resource_management10" do
    assert_difference('ResourceManagement10.count', -1) do
      delete resource_management10_url(@resource_management10)
    end

    assert_redirected_to resource_management10s_url
  end
end
