require 'test_helper'

class SectoralShare2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sectoral_share2 = sectoral_share2s(:one)
  end

  test "should get index" do
    get sectoral_share2s_url
    assert_response :success
  end

  test "should get new" do
    get new_sectoral_share2_url
    assert_response :success
  end

  test "should create sectoral_share2" do
    assert_difference('SectoralShare2.count') do
      post sectoral_share2s_url, params: { sectoral_share2: { Achievement: @sectoral_share2.Achievement, Achievement_Percentage: @sectoral_share2.Achievement_Percentage, Target: @sectoral_share2.Target, Year: @sectoral_share2.Year } }
    end

    assert_redirected_to sectoral_share2_url(SectoralShare2.last)
  end

  test "should show sectoral_share2" do
    get sectoral_share2_url(@sectoral_share2)
    assert_response :success
  end

  test "should get edit" do
    get edit_sectoral_share2_url(@sectoral_share2)
    assert_response :success
  end

  test "should update sectoral_share2" do
    patch sectoral_share2_url(@sectoral_share2), params: { sectoral_share2: { Achievement: @sectoral_share2.Achievement, Achievement_Percentage: @sectoral_share2.Achievement_Percentage, Target: @sectoral_share2.Target, Year: @sectoral_share2.Year } }
    assert_redirected_to sectoral_share2_url(@sectoral_share2)
  end

  test "should destroy sectoral_share2" do
    assert_difference('SectoralShare2.count', -1) do
      delete sectoral_share2_url(@sectoral_share2)
    end

    assert_redirected_to sectoral_share2s_url
  end
end
