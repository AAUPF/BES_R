require 'test_helper'

class ResourceManagement6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resource_management6 = resource_management6s(:one)
  end

  test "should get index" do
    get resource_management6s_url
    assert_response :success
  end

  test "should get new" do
    get new_resource_management6_url
    assert_response :success
  end

  test "should create resource_management6" do
    assert_difference('ResourceManagement6.count') do
      post resource_management6s_url, params: { resource_management6: { Amount: @resource_management6.Amount, Sources_of_Revenue: @resource_management6.Sources_of_Revenue, Year: @resource_management6.Year } }
    end

    assert_redirected_to resource_management6_url(ResourceManagement6.last)
  end

  test "should show resource_management6" do
    get resource_management6_url(@resource_management6)
    assert_response :success
  end

  test "should get edit" do
    get edit_resource_management6_url(@resource_management6)
    assert_response :success
  end

  test "should update resource_management6" do
    patch resource_management6_url(@resource_management6), params: { resource_management6: { Amount: @resource_management6.Amount, Sources_of_Revenue: @resource_management6.Sources_of_Revenue, Year: @resource_management6.Year } }
    assert_redirected_to resource_management6_url(@resource_management6)
  end

  test "should destroy resource_management6" do
    assert_difference('ResourceManagement6.count', -1) do
      delete resource_management6_url(@resource_management6)
    end

    assert_redirected_to resource_management6s_url
  end
end
