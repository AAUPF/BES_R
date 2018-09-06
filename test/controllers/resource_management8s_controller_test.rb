require 'test_helper'

class ResourceManagement8sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resource_management8 = resource_management8s(:one)
  end

  test "should get index" do
    get resource_management8s_url
    assert_response :success
  end

  test "should get new" do
    get new_resource_management8_url
    assert_response :success
  end

  test "should create resource_management8" do
    assert_difference('ResourceManagement8.count') do
      post resource_management8s_url, params: { resource_management8: { Revenue_Sources: @resource_management8.Revenue_Sources, Year: @resource_management8.Year, Yearly_Growth_Rates: @resource_management8.Yearly_Growth_Rates } }
    end

    assert_redirected_to resource_management8_url(ResourceManagement8.last)
  end

  test "should show resource_management8" do
    get resource_management8_url(@resource_management8)
    assert_response :success
  end

  test "should get edit" do
    get edit_resource_management8_url(@resource_management8)
    assert_response :success
  end

  test "should update resource_management8" do
    patch resource_management8_url(@resource_management8), params: { resource_management8: { Revenue_Sources: @resource_management8.Revenue_Sources, Year: @resource_management8.Year, Yearly_Growth_Rates: @resource_management8.Yearly_Growth_Rates } }
    assert_redirected_to resource_management8_url(@resource_management8)
  end

  test "should destroy resource_management8" do
    assert_difference('ResourceManagement8.count', -1) do
      delete resource_management8_url(@resource_management8)
    end

    assert_redirected_to resource_management8s_url
  end
end
