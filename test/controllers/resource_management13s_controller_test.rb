require 'test_helper'

class ResourceManagement13sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resource_management13 = resource_management13s(:one)
  end

  test "should get index" do
    get resource_management13s_url
    assert_response :success
  end

  test "should get new" do
    get new_resource_management13_url
    assert_response :success
  end

  test "should create resource_management13" do
    assert_difference('ResourceManagement13.count') do
      post resource_management13s_url, params: { resource_management13: { Amount: @resource_management13.Amount, Sources: @resource_management13.Sources, Year: @resource_management13.Year } }
    end

    assert_redirected_to resource_management13_url(ResourceManagement13.last)
  end

  test "should show resource_management13" do
    get resource_management13_url(@resource_management13)
    assert_response :success
  end

  test "should get edit" do
    get edit_resource_management13_url(@resource_management13)
    assert_response :success
  end

  test "should update resource_management13" do
    patch resource_management13_url(@resource_management13), params: { resource_management13: { Amount: @resource_management13.Amount, Sources: @resource_management13.Sources, Year: @resource_management13.Year } }
    assert_redirected_to resource_management13_url(@resource_management13)
  end

  test "should destroy resource_management13" do
    assert_difference('ResourceManagement13.count', -1) do
      delete resource_management13_url(@resource_management13)
    end

    assert_redirected_to resource_management13s_url
  end
end
