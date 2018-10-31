require 'test_helper'

class Roads8sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roads8 = roads8s(:one)
  end

  test "should get index" do
    get roads8s_url
    assert_response :success
  end

  test "should get new" do
    get new_roads8_url
    assert_response :success
  end

  test "should create roads8" do
    assert_difference('Roads8.count') do
      post roads8s_url, params: { roads8: { Agency_wise_Road_Bridge: @roads8.Agency_wise_Road_Bridge, Length_in_kms: @roads8.Length_in_kms, Remarks: @roads8.Remarks } }
    end

    assert_redirected_to roads8_url(Roads8.last)
  end

  test "should show roads8" do
    get roads8_url(@roads8)
    assert_response :success
  end

  test "should get edit" do
    get edit_roads8_url(@roads8)
    assert_response :success
  end

  test "should update roads8" do
    patch roads8_url(@roads8), params: { roads8: { Agency_wise_Road_Bridge: @roads8.Agency_wise_Road_Bridge, Length_in_kms: @roads8.Length_in_kms, Remarks: @roads8.Remarks } }
    assert_redirected_to roads8_url(@roads8)
  end

  test "should destroy roads8" do
    assert_difference('Roads8.count', -1) do
      delete roads8_url(@roads8)
    end

    assert_redirected_to roads8s_url
  end
end
