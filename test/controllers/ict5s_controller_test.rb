require 'test_helper'

class Ict5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ict5 = ict5s(:one)
  end

  test "should get index" do
    get ict5s_url
    assert_response :success
  end

  test "should get new" do
    get new_ict5_url
    assert_response :success
  end

  test "should create ict5" do
    assert_difference('Ict5.count') do
      post ict5s_url, params: { ict5: { Deposits: @ict5.Deposits, Indicator: @ict5.Indicator, Investment: @ict5.Investment, MG_NREGA: @ict5.MG_NREGA, MIS: @ict5.MIS, Rural: @ict5.Rural, State: @ict5.State, Sukanya_Samridhi_Account: @ict5.Sukanya_Samridhi_Account, Total: @ict5.Total } }
    end

    assert_redirected_to ict5_url(Ict5.last)
  end

  test "should show ict5" do
    get ict5_url(@ict5)
    assert_response :success
  end

  test "should get edit" do
    get edit_ict5_url(@ict5)
    assert_response :success
  end

  test "should update ict5" do
    patch ict5_url(@ict5), params: { ict5: { Deposits: @ict5.Deposits, Indicator: @ict5.Indicator, Investment: @ict5.Investment, MG_NREGA: @ict5.MG_NREGA, MIS: @ict5.MIS, Rural: @ict5.Rural, State: @ict5.State, Sukanya_Samridhi_Account: @ict5.Sukanya_Samridhi_Account, Total: @ict5.Total } }
    assert_redirected_to ict5_url(@ict5)
  end

  test "should destroy ict5" do
    assert_difference('Ict5.count', -1) do
      delete ict5_url(@ict5)
    end

    assert_redirected_to ict5s_url
  end
end
