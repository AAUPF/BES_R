require 'test_helper'

class ResourceManagement11sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resource_management11 = resource_management11s(:one)
  end

  test "should get index" do
    get resource_management11s_url
    assert_response :success
  end

  test "should get new" do
    get new_resource_management11_url
    assert_response :success
  end

  test "should create resource_management11" do
    assert_difference('ResourceManagement11.count') do
      post resource_management11s_url, params: { resource_management11: { Indicators: @resource_management11.Indicators, Percentage: @resource_management11.Percentage, Year: @resource_management11.Year } }
    end

    assert_redirected_to resource_management11_url(ResourceManagement11.last)
  end

  test "should show resource_management11" do
    get resource_management11_url(@resource_management11)
    assert_response :success
  end

  test "should get edit" do
    get edit_resource_management11_url(@resource_management11)
    assert_response :success
  end

  test "should update resource_management11" do
    patch resource_management11_url(@resource_management11), params: { resource_management11: { Indicators: @resource_management11.Indicators, Percentage: @resource_management11.Percentage, Year: @resource_management11.Year } }
    assert_redirected_to resource_management11_url(@resource_management11)
  end

  test "should destroy resource_management11" do
    assert_difference('ResourceManagement11.count', -1) do
      delete resource_management11_url(@resource_management11)
    end

    assert_redirected_to resource_management11s_url
  end
end
