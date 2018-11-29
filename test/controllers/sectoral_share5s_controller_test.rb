require 'test_helper'

class SectoralShare5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sectoral_share5 = sectoral_share5s(:one)
  end

  test "should get index" do
    get sectoral_share5s_url
    assert_response :success
  end

  test "should get new" do
    get new_sectoral_share5_url
    assert_response :success
  end

  test "should create sectoral_share5" do
    assert_difference('SectoralShare5.count') do
      post sectoral_share5s_url, params: { sectoral_share5: { Annual_Growth_Rate: @sectoral_share5.Annual_Growth_Rate, Commercial_Banks: @sectoral_share5.Commercial_Banks, Cooperative_and_LDBs: @sectoral_share5.Cooperative_and_LDBs, RRBs: @sectoral_share5.RRBs, Total: @sectoral_share5.Total, Year: @sectoral_share5.Year } }
    end

    assert_redirected_to sectoral_share5_url(SectoralShare5.last)
  end

  test "should show sectoral_share5" do
    get sectoral_share5_url(@sectoral_share5)
    assert_response :success
  end

  test "should get edit" do
    get edit_sectoral_share5_url(@sectoral_share5)
    assert_response :success
  end

  test "should update sectoral_share5" do
    patch sectoral_share5_url(@sectoral_share5), params: { sectoral_share5: { Annual_Growth_Rate: @sectoral_share5.Annual_Growth_Rate, Commercial_Banks: @sectoral_share5.Commercial_Banks, Cooperative_and_LDBs: @sectoral_share5.Cooperative_and_LDBs, RRBs: @sectoral_share5.RRBs, Total: @sectoral_share5.Total, Year: @sectoral_share5.Year } }
    assert_redirected_to sectoral_share5_url(@sectoral_share5)
  end

  test "should destroy sectoral_share5" do
    assert_difference('SectoralShare5.count', -1) do
      delete sectoral_share5_url(@sectoral_share5)
    end

    assert_redirected_to sectoral_share5s_url
  end
end
