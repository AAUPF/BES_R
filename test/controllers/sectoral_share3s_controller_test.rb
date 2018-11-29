require 'test_helper'

class SectoralShare3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sectoral_share3 = sectoral_share3s(:one)
  end

  test "should get index" do
    get sectoral_share3s_url
    assert_response :success
  end

  test "should get new" do
    get new_sectoral_share3_url
    assert_response :success
  end

  test "should create sectoral_share3" do
    assert_difference('SectoralShare3.count') do
      post sectoral_share3s_url, params: { sectoral_share3: { Achievement: @sectoral_share3.Achievement, Achievement_Percentage: @sectoral_share3.Achievement_Percentage, Agencies: @sectoral_share3.Agencies, Target: @sectoral_share3.Target, Year: @sectoral_share3.Year } }
    end

    assert_redirected_to sectoral_share3_url(SectoralShare3.last)
  end

  test "should show sectoral_share3" do
    get sectoral_share3_url(@sectoral_share3)
    assert_response :success
  end

  test "should get edit" do
    get edit_sectoral_share3_url(@sectoral_share3)
    assert_response :success
  end

  test "should update sectoral_share3" do
    patch sectoral_share3_url(@sectoral_share3), params: { sectoral_share3: { Achievement: @sectoral_share3.Achievement, Achievement_Percentage: @sectoral_share3.Achievement_Percentage, Agencies: @sectoral_share3.Agencies, Target: @sectoral_share3.Target, Year: @sectoral_share3.Year } }
    assert_redirected_to sectoral_share3_url(@sectoral_share3)
  end

  test "should destroy sectoral_share3" do
    assert_difference('SectoralShare3.count', -1) do
      delete sectoral_share3_url(@sectoral_share3)
    end

    assert_redirected_to sectoral_share3s_url
  end
end
