require 'test_helper'

class DrinkingWaterSupplyAndSanitation1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @drinking_water_supply_and_sanitation1 = drinking_water_supply_and_sanitation1s(:one)
  end

  test "should get index" do
    get drinking_water_supply_and_sanitation1s_url
    assert_response :success
  end

  test "should get new" do
    get new_drinking_water_supply_and_sanitation1_url
    assert_response :success
  end

  test "should create drinking_water_supply_and_sanitation1" do
    assert_difference('DrinkingWaterSupplyAndSanitation1.count') do
      post drinking_water_supply_and_sanitation1s_url, params: { drinking_water_supply_and_sanitation1: { Handpumps_Installed: @drinking_water_supply_and_sanitation1.Handpumps_Installed, IHHL_constructed_under_APL: @drinking_water_supply_and_sanitation1.IHHL_constructed_under_APL, IHHL_constructed_under_BPL: @drinking_water_supply_and_sanitation1.IHHL_constructed_under_BPL, Slipped_back_Habitations_or_Water_quality_problems_covered: @drinking_water_supply_and_sanitation1.Slipped_back_Habitations_or_Water_quality_problems_covered, Total_IHHL_constructed: @drinking_water_supply_and_sanitation1.Total_IHHL_constructed, Year: @drinking_water_supply_and_sanitation1.Year } }
    end

    assert_redirected_to drinking_water_supply_and_sanitation1_url(DrinkingWaterSupplyAndSanitation1.last)
  end

  test "should show drinking_water_supply_and_sanitation1" do
    get drinking_water_supply_and_sanitation1_url(@drinking_water_supply_and_sanitation1)
    assert_response :success
  end

  test "should get edit" do
    get edit_drinking_water_supply_and_sanitation1_url(@drinking_water_supply_and_sanitation1)
    assert_response :success
  end

  test "should update drinking_water_supply_and_sanitation1" do
    patch drinking_water_supply_and_sanitation1_url(@drinking_water_supply_and_sanitation1), params: { drinking_water_supply_and_sanitation1: { Handpumps_Installed: @drinking_water_supply_and_sanitation1.Handpumps_Installed, IHHL_constructed_under_APL: @drinking_water_supply_and_sanitation1.IHHL_constructed_under_APL, IHHL_constructed_under_BPL: @drinking_water_supply_and_sanitation1.IHHL_constructed_under_BPL, Slipped_back_Habitations_or_Water_quality_problems_covered: @drinking_water_supply_and_sanitation1.Slipped_back_Habitations_or_Water_quality_problems_covered, Total_IHHL_constructed: @drinking_water_supply_and_sanitation1.Total_IHHL_constructed, Year: @drinking_water_supply_and_sanitation1.Year } }
    assert_redirected_to drinking_water_supply_and_sanitation1_url(@drinking_water_supply_and_sanitation1)
  end

  test "should destroy drinking_water_supply_and_sanitation1" do
    assert_difference('DrinkingWaterSupplyAndSanitation1.count', -1) do
      delete drinking_water_supply_and_sanitation1_url(@drinking_water_supply_and_sanitation1)
    end

    assert_redirected_to drinking_water_supply_and_sanitation1s_url
  end
end
