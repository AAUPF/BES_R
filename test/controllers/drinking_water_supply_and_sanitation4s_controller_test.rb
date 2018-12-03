require 'test_helper'

class DrinkingWaterSupplyAndSanitation4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @drinking_water_supply_and_sanitation4 = drinking_water_supply_and_sanitation4s(:one)
  end

  test "should get index" do
    get drinking_water_supply_and_sanitation4s_url
    assert_response :success
  end

  test "should get new" do
    get new_drinking_water_supply_and_sanitation4_url
    assert_response :success
  end

  test "should create drinking_water_supply_and_sanitation4" do
    assert_difference('DrinkingWaterSupplyAndSanitation4.count') do
      post drinking_water_supply_and_sanitation4s_url, params: { drinking_water_supply_and_sanitation4: { Achievement: @drinking_water_supply_and_sanitation4.Achievement, Achievement_Percentage: @drinking_water_supply_and_sanitation4.Achievement_Percentage, Sector: @drinking_water_supply_and_sanitation4.Sector, Target: @drinking_water_supply_and_sanitation4.Target, Year: @drinking_water_supply_and_sanitation4.Year } }
    end

    assert_redirected_to drinking_water_supply_and_sanitation4_url(DrinkingWaterSupplyAndSanitation4.last)
  end

  test "should show drinking_water_supply_and_sanitation4" do
    get drinking_water_supply_and_sanitation4_url(@drinking_water_supply_and_sanitation4)
    assert_response :success
  end

  test "should get edit" do
    get edit_drinking_water_supply_and_sanitation4_url(@drinking_water_supply_and_sanitation4)
    assert_response :success
  end

  test "should update drinking_water_supply_and_sanitation4" do
    patch drinking_water_supply_and_sanitation4_url(@drinking_water_supply_and_sanitation4), params: { drinking_water_supply_and_sanitation4: { Achievement: @drinking_water_supply_and_sanitation4.Achievement, Achievement_Percentage: @drinking_water_supply_and_sanitation4.Achievement_Percentage, Sector: @drinking_water_supply_and_sanitation4.Sector, Target: @drinking_water_supply_and_sanitation4.Target, Year: @drinking_water_supply_and_sanitation4.Year } }
    assert_redirected_to drinking_water_supply_and_sanitation4_url(@drinking_water_supply_and_sanitation4)
  end

  test "should destroy drinking_water_supply_and_sanitation4" do
    assert_difference('DrinkingWaterSupplyAndSanitation4.count', -1) do
      delete drinking_water_supply_and_sanitation4_url(@drinking_water_supply_and_sanitation4)
    end

    assert_redirected_to drinking_water_supply_and_sanitation4s_url
  end
end
