require 'test_helper'

class ResourceManagement2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resource_management2 = resource_management2s(:one)
  end

  test "should get index" do
    get resource_management2s_url
    assert_response :success
  end

  test "should get new" do
    get new_resource_management2_url
    assert_response :success
  end

  test "should create resource_management2" do
    assert_difference('ResourceManagement2.count') do
      post resource_management2s_url, params: { resource_management2: { Amount: @resource_management2.Amount, Sources_of_Revenue: @resource_management2.Sources_of_Revenue, Year: @resource_management2.Year } }
    end

    assert_redirected_to resource_management2_url(ResourceManagement2.last)
  end

  test "should show resource_management2" do
    get resource_management2_url(@resource_management2)
    assert_response :success
  end

  test "should get edit" do
    get edit_resource_management2_url(@resource_management2)
    assert_response :success
  end

  test "should update resource_management2" do
    patch resource_management2_url(@resource_management2), params: { resource_management2: { Amount: @resource_management2.Amount, Sources_of_Revenue: @resource_management2.Sources_of_Revenue, Year: @resource_management2.Year } }
    assert_redirected_to resource_management2_url(@resource_management2)
  end

  test "should destroy resource_management2" do
    assert_difference('ResourceManagement2.count', -1) do
      delete resource_management2_url(@resource_management2)
    end

    assert_redirected_to resource_management2s_url
  end
end
