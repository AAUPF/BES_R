require 'test_helper'

class SectoralShare4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sectoral_share4 = sectoral_share4s(:one)
  end

  test "should get index" do
    get sectoral_share4s_url
    assert_response :success
  end

  test "should get new" do
    get new_sectoral_share4_url
    assert_response :success
  end

  test "should create sectoral_share4" do
    assert_difference('SectoralShare4.count') do
      post sectoral_share4s_url, params: { sectoral_share4: { Achievement: @sectoral_share4.Achievement, Achievement_Percentage: @sectoral_share4.Achievement_Percentage, Indicator: @sectoral_share4.Indicator, Target: @sectoral_share4.Target, Year: @sectoral_share4.Year } }
    end

    assert_redirected_to sectoral_share4_url(SectoralShare4.last)
  end

  test "should show sectoral_share4" do
    get sectoral_share4_url(@sectoral_share4)
    assert_response :success
  end

  test "should get edit" do
    get edit_sectoral_share4_url(@sectoral_share4)
    assert_response :success
  end

  test "should update sectoral_share4" do
    patch sectoral_share4_url(@sectoral_share4), params: { sectoral_share4: { Achievement: @sectoral_share4.Achievement, Achievement_Percentage: @sectoral_share4.Achievement_Percentage, Indicator: @sectoral_share4.Indicator, Target: @sectoral_share4.Target, Year: @sectoral_share4.Year } }
    assert_redirected_to sectoral_share4_url(@sectoral_share4)
  end

  test "should destroy sectoral_share4" do
    assert_difference('SectoralShare4.count', -1) do
      delete sectoral_share4_url(@sectoral_share4)
    end

    assert_redirected_to sectoral_share4s_url
  end
end
