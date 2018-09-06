require 'test_helper'

class ResourceManagement7sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resource_management7 = resource_management7s(:one)
  end

  test "should get index" do
    get resource_management7s_url
    assert_response :success
  end

  test "should get new" do
    get new_resource_management7_url
    assert_response :success
  end

  test "should create resource_management7" do
    assert_difference('ResourceManagement7.count') do
      post resource_management7s_url, params: { resource_management7: { Percentage: @resource_management7.Percentage, Revenue_Sources: @resource_management7.Revenue_Sources, Year: @resource_management7.Year } }
    end

    assert_redirected_to resource_management7_url(ResourceManagement7.last)
  end

  test "should show resource_management7" do
    get resource_management7_url(@resource_management7)
    assert_response :success
  end

  test "should get edit" do
    get edit_resource_management7_url(@resource_management7)
    assert_response :success
  end

  test "should update resource_management7" do
    patch resource_management7_url(@resource_management7), params: { resource_management7: { Percentage: @resource_management7.Percentage, Revenue_Sources: @resource_management7.Revenue_Sources, Year: @resource_management7.Year } }
    assert_redirected_to resource_management7_url(@resource_management7)
  end

  test "should destroy resource_management7" do
    assert_difference('ResourceManagement7.count', -1) do
      delete resource_management7_url(@resource_management7)
    end

    assert_redirected_to resource_management7s_url
  end
end
