require 'test_helper'

class ResourceManagement12sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resource_management12 = resource_management12s(:one)
  end

  test "should get index" do
    get resource_management12s_url
    assert_response :success
  end

  test "should get new" do
    get new_resource_management12_url
    assert_response :success
  end

  test "should create resource_management12" do
    assert_difference('ResourceManagement12.count') do
      post resource_management12s_url, params: { resource_management12: { Buoyancy_Ratio: @resource_management12.Buoyancy_Ratio, Revenue_Sources: @resource_management12.Revenue_Sources, Year: @resource_management12.Year } }
    end

    assert_redirected_to resource_management12_url(ResourceManagement12.last)
  end

  test "should show resource_management12" do
    get resource_management12_url(@resource_management12)
    assert_response :success
  end

  test "should get edit" do
    get edit_resource_management12_url(@resource_management12)
    assert_response :success
  end

  test "should update resource_management12" do
    patch resource_management12_url(@resource_management12), params: { resource_management12: { Buoyancy_Ratio: @resource_management12.Buoyancy_Ratio, Revenue_Sources: @resource_management12.Revenue_Sources, Year: @resource_management12.Year } }
    assert_redirected_to resource_management12_url(@resource_management12)
  end

  test "should destroy resource_management12" do
    assert_difference('ResourceManagement12.count', -1) do
      delete resource_management12_url(@resource_management12)
    end

    assert_redirected_to resource_management12s_url
  end
end
