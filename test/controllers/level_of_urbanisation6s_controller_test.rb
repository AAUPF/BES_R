require 'test_helper'

class LevelOfUrbanisation6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @level_of_urbanisation6 = level_of_urbanisation6s(:one)
  end

  test "should get index" do
    get level_of_urbanisation6s_url
    assert_response :success
  end

  test "should get new" do
    get new_level_of_urbanisation6_url
    assert_response :success
  end

  test "should create level_of_urbanisation6" do
    assert_difference('LevelOfUrbanisation6.count') do
      post level_of_urbanisation6s_url, params: { level_of_urbanisation6: { Indicator: @level_of_urbanisation6.Indicator, Municipal_Corporations: @level_of_urbanisation6.Municipal_Corporations, Municipal_Councils: @level_of_urbanisation6.Municipal_Councils, Nagar_Panchayats: @level_of_urbanisation6.Nagar_Panchayats, Total: @level_of_urbanisation6.Total, Year: @level_of_urbanisation6.Year } }
    end

    assert_redirected_to level_of_urbanisation6_url(LevelOfUrbanisation6.last)
  end

  test "should show level_of_urbanisation6" do
    get level_of_urbanisation6_url(@level_of_urbanisation6)
    assert_response :success
  end

  test "should get edit" do
    get edit_level_of_urbanisation6_url(@level_of_urbanisation6)
    assert_response :success
  end

  test "should update level_of_urbanisation6" do
    patch level_of_urbanisation6_url(@level_of_urbanisation6), params: { level_of_urbanisation6: { Indicator: @level_of_urbanisation6.Indicator, Municipal_Corporations: @level_of_urbanisation6.Municipal_Corporations, Municipal_Councils: @level_of_urbanisation6.Municipal_Councils, Nagar_Panchayats: @level_of_urbanisation6.Nagar_Panchayats, Total: @level_of_urbanisation6.Total, Year: @level_of_urbanisation6.Year } }
    assert_redirected_to level_of_urbanisation6_url(@level_of_urbanisation6)
  end

  test "should destroy level_of_urbanisation6" do
    assert_difference('LevelOfUrbanisation6.count', -1) do
      delete level_of_urbanisation6_url(@level_of_urbanisation6)
    end

    assert_redirected_to level_of_urbanisation6s_url
  end
end
