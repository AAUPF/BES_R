require 'test_helper'

class DrinkingWaterSupplyAndSanitation2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @drinking_water_supply_and_sanitation2 = drinking_water_supply_and_sanitation2s(:one)
  end

  test "should get index" do
    get drinking_water_supply_and_sanitation2s_url
    assert_response :success
  end

  test "should get new" do
    get new_drinking_water_supply_and_sanitation2_url
    assert_response :success
  end

  test "should create drinking_water_supply_and_sanitation2" do
    assert_difference('DrinkingWaterSupplyAndSanitation2.count') do
      post drinking_water_supply_and_sanitation2s_url, params: { drinking_water_supply_and_sanitation2: { Expenditure: @drinking_water_supply_and_sanitation2.Expenditure, Outlay: @drinking_water_supply_and_sanitation2.Outlay, Percentage_of_Utilisation: @drinking_water_supply_and_sanitation2.Percentage_of_Utilisation, Year: @drinking_water_supply_and_sanitation2.Year } }
    end

    assert_redirected_to drinking_water_supply_and_sanitation2_url(DrinkingWaterSupplyAndSanitation2.last)
  end

  test "should show drinking_water_supply_and_sanitation2" do
    get drinking_water_supply_and_sanitation2_url(@drinking_water_supply_and_sanitation2)
    assert_response :success
  end

  test "should get edit" do
    get edit_drinking_water_supply_and_sanitation2_url(@drinking_water_supply_and_sanitation2)
    assert_response :success
  end

  test "should update drinking_water_supply_and_sanitation2" do
    patch drinking_water_supply_and_sanitation2_url(@drinking_water_supply_and_sanitation2), params: { drinking_water_supply_and_sanitation2: { Expenditure: @drinking_water_supply_and_sanitation2.Expenditure, Outlay: @drinking_water_supply_and_sanitation2.Outlay, Percentage_of_Utilisation: @drinking_water_supply_and_sanitation2.Percentage_of_Utilisation, Year: @drinking_water_supply_and_sanitation2.Year } }
    assert_redirected_to drinking_water_supply_and_sanitation2_url(@drinking_water_supply_and_sanitation2)
  end

  test "should destroy drinking_water_supply_and_sanitation2" do
    assert_difference('DrinkingWaterSupplyAndSanitation2.count', -1) do
      delete drinking_water_supply_and_sanitation2_url(@drinking_water_supply_and_sanitation2)
    end

    assert_redirected_to drinking_water_supply_and_sanitation2s_url
  end
end
