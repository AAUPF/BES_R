require 'test_helper'

class DrinkingWaterSupplyAndSanitation3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @drinking_water_supply_and_sanitation3 = drinking_water_supply_and_sanitation3s(:one)
  end

  test "should get index" do
    get drinking_water_supply_and_sanitation3s_url
    assert_response :success
  end

  test "should get new" do
    get new_drinking_water_supply_and_sanitation3_url
    assert_response :success
  end

  test "should create drinking_water_supply_and_sanitation3" do
    assert_difference('DrinkingWaterSupplyAndSanitation3.count') do
      post drinking_water_supply_and_sanitation3s_url, params: { drinking_water_supply_and_sanitation3: { Expenditure: @drinking_water_supply_and_sanitation3.Expenditure, Outlay: @drinking_water_supply_and_sanitation3.Outlay, Outlay_as_Percent_of_Expenditure: @drinking_water_supply_and_sanitation3.Outlay_as_Percent_of_Expenditure, Year: @drinking_water_supply_and_sanitation3.Year } }
    end

    assert_redirected_to drinking_water_supply_and_sanitation3_url(DrinkingWaterSupplyAndSanitation3.last)
  end

  test "should show drinking_water_supply_and_sanitation3" do
    get drinking_water_supply_and_sanitation3_url(@drinking_water_supply_and_sanitation3)
    assert_response :success
  end

  test "should get edit" do
    get edit_drinking_water_supply_and_sanitation3_url(@drinking_water_supply_and_sanitation3)
    assert_response :success
  end

  test "should update drinking_water_supply_and_sanitation3" do
    patch drinking_water_supply_and_sanitation3_url(@drinking_water_supply_and_sanitation3), params: { drinking_water_supply_and_sanitation3: { Expenditure: @drinking_water_supply_and_sanitation3.Expenditure, Outlay: @drinking_water_supply_and_sanitation3.Outlay, Outlay_as_Percent_of_Expenditure: @drinking_water_supply_and_sanitation3.Outlay_as_Percent_of_Expenditure, Year: @drinking_water_supply_and_sanitation3.Year } }
    assert_redirected_to drinking_water_supply_and_sanitation3_url(@drinking_water_supply_and_sanitation3)
  end

  test "should destroy drinking_water_supply_and_sanitation3" do
    assert_difference('DrinkingWaterSupplyAndSanitation3.count', -1) do
      delete drinking_water_supply_and_sanitation3_url(@drinking_water_supply_and_sanitation3)
    end

    assert_redirected_to drinking_water_supply_and_sanitation3s_url
  end
end
