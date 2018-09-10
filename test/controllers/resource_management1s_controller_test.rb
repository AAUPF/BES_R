require 'test_helper'

class ResourceManagement1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resource_management1 = resource_management1s(:one)
  end

  test "should get index" do
    get resource_management1s_url
    assert_response :success
  end

  test "should get new" do
    get new_resource_management1_url
    assert_response :success
  end

  test "should create resource_management1" do
    assert_difference('ResourceManagement1.count') do
      post resource_management1s_url, params: { resource_management1: { 2012-13: @resource_management1.2012-13, 2013-14: @resource_management1.2013-14, 2014-15: @resource_management1.2014-15, 2015-16: @resource_management1.2015-16, 2016-17: @resource_management1.2016-17, 2017-18_BE: @resource_management1.2017-18_BE, Sector: @resource_management1.Sector } }
    end

    assert_redirected_to resource_management1_url(ResourceManagement1.last)
  end

  test "should show resource_management1" do
    get resource_management1_url(@resource_management1)
    assert_response :success
  end

  test "should get edit" do
    get edit_resource_management1_url(@resource_management1)
    assert_response :success
  end

  test "should update resource_management1" do
    patch resource_management1_url(@resource_management1), params: { resource_management1: { 2012-13: @resource_management1.2012-13, 2013-14: @resource_management1.2013-14, 2014-15: @resource_management1.2014-15, 2015-16: @resource_management1.2015-16, 2016-17: @resource_management1.2016-17, 2017-18_BE: @resource_management1.2017-18_BE, Sector: @resource_management1.Sector } }
    assert_redirected_to resource_management1_url(@resource_management1)
  end

  test "should destroy resource_management1" do
    assert_difference('ResourceManagement1.count', -1) do
      delete resource_management1_url(@resource_management1)
    end

    assert_redirected_to resource_management1s_url
  end
end
