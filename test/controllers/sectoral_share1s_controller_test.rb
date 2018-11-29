require 'test_helper'

class SectoralShare1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sectoral_share1 = sectoral_share1s(:one)
  end

  test "should get index" do
    get sectoral_share1s_url
    assert_response :success
  end

  test "should get new" do
    get new_sectoral_share1_url
    assert_response :success
  end

  test "should create sectoral_share1" do
    assert_difference('SectoralShare1.count') do
      post sectoral_share1s_url, params: { sectoral_share1: { ACP_Target: @sectoral_share1.ACP_Target, Achievement: @sectoral_share1.Achievement, Achievement_Percentage: @sectoral_share1.Achievement_Percentage, Percentage_of_Share_in_Advances: @sectoral_share1.Percentage_of_Share_in_Advances, Sector: @sectoral_share1.Sector, Year: @sectoral_share1.Year } }
    end

    assert_redirected_to sectoral_share1_url(SectoralShare1.last)
  end

  test "should show sectoral_share1" do
    get sectoral_share1_url(@sectoral_share1)
    assert_response :success
  end

  test "should get edit" do
    get edit_sectoral_share1_url(@sectoral_share1)
    assert_response :success
  end

  test "should update sectoral_share1" do
    patch sectoral_share1_url(@sectoral_share1), params: { sectoral_share1: { ACP_Target: @sectoral_share1.ACP_Target, Achievement: @sectoral_share1.Achievement, Achievement_Percentage: @sectoral_share1.Achievement_Percentage, Percentage_of_Share_in_Advances: @sectoral_share1.Percentage_of_Share_in_Advances, Sector: @sectoral_share1.Sector, Year: @sectoral_share1.Year } }
    assert_redirected_to sectoral_share1_url(@sectoral_share1)
  end

  test "should destroy sectoral_share1" do
    assert_difference('SectoralShare1.count', -1) do
      delete sectoral_share1_url(@sectoral_share1)
    end

    assert_redirected_to sectoral_share1s_url
  end
end
