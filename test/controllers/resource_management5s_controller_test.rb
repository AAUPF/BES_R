require 'test_helper'

class ResourceManagement5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resource_management5 = resource_management5s(:one)
  end

  test "should get index" do
    get resource_management5s_url
    assert_response :success
  end

  test "should get new" do
    get new_resource_management5_url
    assert_response :success
  end

  test "should create resource_management5" do
    assert_difference('ResourceManagement5.count') do
      post resource_management5s_url, params: { resource_management5: { Percentage: @resource_management5.Percentage, Source: @resource_management5.Source, Year: @resource_management5.Year } }
    end

    assert_redirected_to resource_management5_url(ResourceManagement5.last)
  end

  test "should show resource_management5" do
    get resource_management5_url(@resource_management5)
    assert_response :success
  end

  test "should get edit" do
    get edit_resource_management5_url(@resource_management5)
    assert_response :success
  end

  test "should update resource_management5" do
    patch resource_management5_url(@resource_management5), params: { resource_management5: { Percentage: @resource_management5.Percentage, Source: @resource_management5.Source, Year: @resource_management5.Year } }
    assert_redirected_to resource_management5_url(@resource_management5)
  end

  test "should destroy resource_management5" do
    assert_difference('ResourceManagement5.count', -1) do
      delete resource_management5_url(@resource_management5)
    end

    assert_redirected_to resource_management5s_url
  end
end
