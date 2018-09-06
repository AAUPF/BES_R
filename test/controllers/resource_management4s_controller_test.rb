require 'test_helper'

class ResourceManagement4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resource_management4 = resource_management4s(:one)
  end

  test "should get index" do
    get resource_management4s_url
    assert_response :success
  end

  test "should get new" do
    get new_resource_management4_url
    assert_response :success
  end

  test "should create resource_management4" do
    assert_difference('ResourceManagement4.count') do
      post resource_management4s_url, params: { resource_management4: { Percentage_Growth_Over_Previous_Year: @resource_management4.Percentage_Growth_Over_Previous_Year, Sources_of_Revenue: @resource_management4.Sources_of_Revenue, Year: @resource_management4.Year } }
    end

    assert_redirected_to resource_management4_url(ResourceManagement4.last)
  end

  test "should show resource_management4" do
    get resource_management4_url(@resource_management4)
    assert_response :success
  end

  test "should get edit" do
    get edit_resource_management4_url(@resource_management4)
    assert_response :success
  end

  test "should update resource_management4" do
    patch resource_management4_url(@resource_management4), params: { resource_management4: { Percentage_Growth_Over_Previous_Year: @resource_management4.Percentage_Growth_Over_Previous_Year, Sources_of_Revenue: @resource_management4.Sources_of_Revenue, Year: @resource_management4.Year } }
    assert_redirected_to resource_management4_url(@resource_management4)
  end

  test "should destroy resource_management4" do
    assert_difference('ResourceManagement4.count', -1) do
      delete resource_management4_url(@resource_management4)
    end

    assert_redirected_to resource_management4s_url
  end
end
