require 'test_helper'

class SectoralShare12sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sectoral_share12 = sectoral_share12s(:one)
  end

  test "should get index" do
    get sectoral_share12s_url
    assert_response :success
  end

  test "should get new" do
    get new_sectoral_share12_url
    assert_response :success
  end

  test "should create sectoral_share12" do
    assert_difference('SectoralShare12.count') do
      post sectoral_share12s_url, params: { sectoral_share12: { Achievement: @sectoral_share12.Achievement, Achievement_Percentage: @sectoral_share12.Achievement_Percentage, Districts: @sectoral_share12.Districts, Indicator: @sectoral_share12.Indicator, Target: @sectoral_share12.Target } }
    end

    assert_redirected_to sectoral_share12_url(SectoralShare12.last)
  end

  test "should show sectoral_share12" do
    get sectoral_share12_url(@sectoral_share12)
    assert_response :success
  end

  test "should get edit" do
    get edit_sectoral_share12_url(@sectoral_share12)
    assert_response :success
  end

  test "should update sectoral_share12" do
    patch sectoral_share12_url(@sectoral_share12), params: { sectoral_share12: { Achievement: @sectoral_share12.Achievement, Achievement_Percentage: @sectoral_share12.Achievement_Percentage, Districts: @sectoral_share12.Districts, Indicator: @sectoral_share12.Indicator, Target: @sectoral_share12.Target } }
    assert_redirected_to sectoral_share12_url(@sectoral_share12)
  end

  test "should destroy sectoral_share12" do
    assert_difference('SectoralShare12.count', -1) do
      delete sectoral_share12_url(@sectoral_share12)
    end

    assert_redirected_to sectoral_share12s_url
  end
end
