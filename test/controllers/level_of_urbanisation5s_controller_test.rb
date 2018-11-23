require 'test_helper'

class LevelOfUrbanisation5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @level_of_urbanisation5 = level_of_urbanisation5s(:one)
  end

  test "should get index" do
    get level_of_urbanisation5s_url
    assert_response :success
  end

  test "should get new" do
    get new_level_of_urbanisation5_url
    assert_response :success
  end

  test "should create level_of_urbanisation5" do
    assert_difference('LevelOfUrbanisation5.count') do
      post level_of_urbanisation5s_url, params: { level_of_urbanisation5: { Municipal_Corporations: @level_of_urbanisation5.Municipal_Corporations, Municipal_Councils: @level_of_urbanisation5.Municipal_Councils, Nagar_Panchayats: @level_of_urbanisation5.Nagar_Panchayats, Particulars: @level_of_urbanisation5.Particulars, Total: @level_of_urbanisation5.Total } }
    end

    assert_redirected_to level_of_urbanisation5_url(LevelOfUrbanisation5.last)
  end

  test "should show level_of_urbanisation5" do
    get level_of_urbanisation5_url(@level_of_urbanisation5)
    assert_response :success
  end

  test "should get edit" do
    get edit_level_of_urbanisation5_url(@level_of_urbanisation5)
    assert_response :success
  end

  test "should update level_of_urbanisation5" do
    patch level_of_urbanisation5_url(@level_of_urbanisation5), params: { level_of_urbanisation5: { Municipal_Corporations: @level_of_urbanisation5.Municipal_Corporations, Municipal_Councils: @level_of_urbanisation5.Municipal_Councils, Nagar_Panchayats: @level_of_urbanisation5.Nagar_Panchayats, Particulars: @level_of_urbanisation5.Particulars, Total: @level_of_urbanisation5.Total } }
    assert_redirected_to level_of_urbanisation5_url(@level_of_urbanisation5)
  end

  test "should destroy level_of_urbanisation5" do
    assert_difference('LevelOfUrbanisation5.count', -1) do
      delete level_of_urbanisation5_url(@level_of_urbanisation5)
    end

    assert_redirected_to level_of_urbanisation5s_url
  end
end
