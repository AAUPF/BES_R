require 'test_helper'

class BridgeSector2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bridge_sector2 = bridge_sector2s(:one)
  end

  test "should get index" do
    get bridge_sector2s_url
    assert_response :success
  end

  test "should get new" do
    get new_bridge_sector2_url
    assert_response :success
  end

  test "should create bridge_sector2" do
    assert_difference('BridgeSector2.count') do
      post bridge_sector2s_url, params: { bridge_sector2: { Administrative_Expenditure: @bridge_sector2.Administrative_Expenditure, Expenditure: @bridge_sector2.Expenditure, Gross_Profit: @bridge_sector2.Gross_Profit, Net_Profit: @bridge_sector2.Net_Profit, Number_of_Bridges: @bridge_sector2.Number_of_Bridges, Total_Revenue: @bridge_sector2.Total_Revenue, Turnover: @bridge_sector2.Turnover, Year: @bridge_sector2.Year } }
    end

    assert_redirected_to bridge_sector2_url(BridgeSector2.last)
  end

  test "should show bridge_sector2" do
    get bridge_sector2_url(@bridge_sector2)
    assert_response :success
  end

  test "should get edit" do
    get edit_bridge_sector2_url(@bridge_sector2)
    assert_response :success
  end

  test "should update bridge_sector2" do
    patch bridge_sector2_url(@bridge_sector2), params: { bridge_sector2: { Administrative_Expenditure: @bridge_sector2.Administrative_Expenditure, Expenditure: @bridge_sector2.Expenditure, Gross_Profit: @bridge_sector2.Gross_Profit, Net_Profit: @bridge_sector2.Net_Profit, Number_of_Bridges: @bridge_sector2.Number_of_Bridges, Total_Revenue: @bridge_sector2.Total_Revenue, Turnover: @bridge_sector2.Turnover, Year: @bridge_sector2.Year } }
    assert_redirected_to bridge_sector2_url(@bridge_sector2)
  end

  test "should destroy bridge_sector2" do
    assert_difference('BridgeSector2.count', -1) do
      delete bridge_sector2_url(@bridge_sector2)
    end

    assert_redirected_to bridge_sector2s_url
  end
end
