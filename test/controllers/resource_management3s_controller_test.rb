require 'test_helper'

class ResourceManagement3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resource_management3 = resource_management3s(:one)
  end

  test "should get index" do
    get resource_management3s_url
    assert_response :success
  end

  test "should get new" do
    get new_resource_management3_url
    assert_response :success
  end

  test "should create resource_management3" do
    assert_difference('ResourceManagement3.count') do
      post resource_management3s_url, params: { resource_management3: { Percentage: @resource_management3.Percentage, Sources_of_Revenue: @resource_management3.Sources_of_Revenue, Year: @resource_management3.Year } }
    end

    assert_redirected_to resource_management3_url(ResourceManagement3.last)
  end

  test "should show resource_management3" do
    get resource_management3_url(@resource_management3)
    assert_response :success
  end

  test "should get edit" do
    get edit_resource_management3_url(@resource_management3)
    assert_response :success
  end

  test "should update resource_management3" do
    patch resource_management3_url(@resource_management3), params: { resource_management3: { Percentage: @resource_management3.Percentage, Sources_of_Revenue: @resource_management3.Sources_of_Revenue, Year: @resource_management3.Year } }
    assert_redirected_to resource_management3_url(@resource_management3)
  end

  test "should destroy resource_management3" do
    assert_difference('ResourceManagement3.count', -1) do
      delete resource_management3_url(@resource_management3)
    end

    assert_redirected_to resource_management3s_url
  end
end
