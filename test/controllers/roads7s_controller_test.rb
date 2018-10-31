require 'test_helper'

class Roads7sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roads7 = roads7s(:one)
  end

  test "should get index" do
    get roads7s_url
    assert_response :success
  end

  test "should get new" do
    get new_roads7_url
    assert_response :success
  end

  test "should create roads7" do
    assert_difference('Roads7.count') do
      post roads7s_url, params: { roads7: { Length_in_kms: @roads7.Length_in_kms, Project: @roads7.Project, Remarks: @roads7.Remarks } }
    end

    assert_redirected_to roads7_url(Roads7.last)
  end

  test "should show roads7" do
    get roads7_url(@roads7)
    assert_response :success
  end

  test "should get edit" do
    get edit_roads7_url(@roads7)
    assert_response :success
  end

  test "should update roads7" do
    patch roads7_url(@roads7), params: { roads7: { Length_in_kms: @roads7.Length_in_kms, Project: @roads7.Project, Remarks: @roads7.Remarks } }
    assert_redirected_to roads7_url(@roads7)
  end

  test "should destroy roads7" do
    assert_difference('Roads7.count', -1) do
      delete roads7_url(@roads7)
    end

    assert_redirected_to roads7s_url
  end
end
