require 'test_helper'

class Ict4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ict4 = ict4s(:one)
  end

  test "should get index" do
    get ict4s_url
    assert_response :success
  end

  test "should get new" do
    get new_ict4_url
    assert_response :success
  end

  test "should create ict4" do
    assert_difference('Ict4.count') do
      post ict4s_url, params: { ict4: { Indicator: @ict4.Indicator, Rural: @ict4.Rural, Rural_Percentage: @ict4.Rural_Percentage, Share_in_all_India: @ict4.Share_in_all_India, State: @ict4.State, Total: @ict4.Total, Urban: @ict4.Urban, Urban_Percentage: @ict4.Urban_Percentage } }
    end

    assert_redirected_to ict4_url(Ict4.last)
  end

  test "should show ict4" do
    get ict4_url(@ict4)
    assert_response :success
  end

  test "should get edit" do
    get edit_ict4_url(@ict4)
    assert_response :success
  end

  test "should update ict4" do
    patch ict4_url(@ict4), params: { ict4: { Indicator: @ict4.Indicator, Rural: @ict4.Rural, Rural_Percentage: @ict4.Rural_Percentage, Share_in_all_India: @ict4.Share_in_all_India, State: @ict4.State, Total: @ict4.Total, Urban: @ict4.Urban, Urban_Percentage: @ict4.Urban_Percentage } }
    assert_redirected_to ict4_url(@ict4)
  end

  test "should destroy ict4" do
    assert_difference('Ict4.count', -1) do
      delete ict4_url(@ict4)
    end

    assert_redirected_to ict4s_url
  end
end
