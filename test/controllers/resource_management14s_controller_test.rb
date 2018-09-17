require 'test_helper'

class ResourceManagement14sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resource_management14 = resource_management14s(:one)
  end

  test "should get index" do
    get resource_management14s_url
    assert_response :success
  end

  test "should get new" do
    get new_resource_management14_url
    assert_response :success
  end

  test "should create resource_management14" do
    assert_difference('ResourceManagement14.count') do
      post resource_management14s_url, params: { resource_management14: { 2016-17: @resource_management14.2016-17, Agency: @resource_management14.Agency, GoI_Scheme: @resource_management14.GoI_Scheme } }
    end

    assert_redirected_to resource_management14_url(ResourceManagement14.last)
  end

  test "should show resource_management14" do
    get resource_management14_url(@resource_management14)
    assert_response :success
  end

  test "should get edit" do
    get edit_resource_management14_url(@resource_management14)
    assert_response :success
  end

  test "should update resource_management14" do
    patch resource_management14_url(@resource_management14), params: { resource_management14: { 2016-17: @resource_management14.2016-17, Agency: @resource_management14.Agency, GoI_Scheme: @resource_management14.GoI_Scheme } }
    assert_redirected_to resource_management14_url(@resource_management14)
  end

  test "should destroy resource_management14" do
    assert_difference('ResourceManagement14.count', -1) do
      delete resource_management14_url(@resource_management14)
    end

    assert_redirected_to resource_management14s_url
  end
end
