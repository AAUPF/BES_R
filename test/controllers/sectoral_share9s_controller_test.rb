require 'test_helper'

class SectoralShare9sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sectoral_share9 = sectoral_share9s(:one)
  end

  test "should get index" do
    get sectoral_share9s_url
    assert_response :success
  end

  test "should get new" do
    get new_sectoral_share9_url
    assert_response :success
  end

  test "should create sectoral_share9" do
    assert_difference('SectoralShare9.count') do
      post sectoral_share9s_url, params: { sectoral_share9: { Achievement: @sectoral_share9.Achievement, Achievement_Percentage: @sectoral_share9.Achievement_Percentage, Indicator: @sectoral_share9.Indicator, Target: @sectoral_share9.Target, Year: @sectoral_share9.Year } }
    end

    assert_redirected_to sectoral_share9_url(SectoralShare9.last)
  end

  test "should show sectoral_share9" do
    get sectoral_share9_url(@sectoral_share9)
    assert_response :success
  end

  test "should get edit" do
    get edit_sectoral_share9_url(@sectoral_share9)
    assert_response :success
  end

  test "should update sectoral_share9" do
    patch sectoral_share9_url(@sectoral_share9), params: { sectoral_share9: { Achievement: @sectoral_share9.Achievement, Achievement_Percentage: @sectoral_share9.Achievement_Percentage, Indicator: @sectoral_share9.Indicator, Target: @sectoral_share9.Target, Year: @sectoral_share9.Year } }
    assert_redirected_to sectoral_share9_url(@sectoral_share9)
  end

  test "should destroy sectoral_share9" do
    assert_difference('SectoralShare9.count', -1) do
      delete sectoral_share9_url(@sectoral_share9)
    end

    assert_redirected_to sectoral_share9s_url
  end
end
