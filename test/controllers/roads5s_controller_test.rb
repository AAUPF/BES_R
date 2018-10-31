require 'test_helper'

class Roads5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roads5 = roads5s(:one)
  end

  test "should get index" do
    get roads5s_url
    assert_response :success
  end

  test "should get new" do
    get new_roads5_url
    assert_response :success
  end

  test "should create roads5" do
    assert_difference('Roads5.count') do
      post roads5s_url, params: { roads5: { Category_of_Road: @roads5.Category_of_Road, Indicator: @roads5.Indicator, Length_in_kms: @roads5.Length_in_kms, Percentage_share: @roads5.Percentage_share } }
    end

    assert_redirected_to roads5_url(Roads5.last)
  end

  test "should show roads5" do
    get roads5_url(@roads5)
    assert_response :success
  end

  test "should get edit" do
    get edit_roads5_url(@roads5)
    assert_response :success
  end

  test "should update roads5" do
    patch roads5_url(@roads5), params: { roads5: { Category_of_Road: @roads5.Category_of_Road, Indicator: @roads5.Indicator, Length_in_kms: @roads5.Length_in_kms, Percentage_share: @roads5.Percentage_share } }
    assert_redirected_to roads5_url(@roads5)
  end

  test "should destroy roads5" do
    assert_difference('Roads5.count', -1) do
      delete roads5_url(@roads5)
    end

    assert_redirected_to roads5s_url
  end
end
