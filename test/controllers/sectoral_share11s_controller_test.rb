require 'test_helper'

class SectoralShare11sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sectoral_share11 = sectoral_share11s(:one)
  end

  test "should get index" do
    get sectoral_share11s_url
    assert_response :success
  end

  test "should get new" do
    get new_sectoral_share11_url
    assert_response :success
  end

  test "should create sectoral_share11" do
    assert_difference('SectoralShare11.count') do
      post sectoral_share11s_url, params: { sectoral_share11: { Achievement: @sectoral_share11.Achievement, Achievement_Percentage: @sectoral_share11.Achievement_Percentage, Districts: @sectoral_share11.Districts, Indicator: @sectoral_share11.Indicator, Target: @sectoral_share11.Target } }
    end

    assert_redirected_to sectoral_share11_url(SectoralShare11.last)
  end

  test "should show sectoral_share11" do
    get sectoral_share11_url(@sectoral_share11)
    assert_response :success
  end

  test "should get edit" do
    get edit_sectoral_share11_url(@sectoral_share11)
    assert_response :success
  end

  test "should update sectoral_share11" do
    patch sectoral_share11_url(@sectoral_share11), params: { sectoral_share11: { Achievement: @sectoral_share11.Achievement, Achievement_Percentage: @sectoral_share11.Achievement_Percentage, Districts: @sectoral_share11.Districts, Indicator: @sectoral_share11.Indicator, Target: @sectoral_share11.Target } }
    assert_redirected_to sectoral_share11_url(@sectoral_share11)
  end

  test "should destroy sectoral_share11" do
    assert_difference('SectoralShare11.count', -1) do
      delete sectoral_share11_url(@sectoral_share11)
    end

    assert_redirected_to sectoral_share11s_url
  end
end
