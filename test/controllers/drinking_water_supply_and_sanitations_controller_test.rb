require 'test_helper'

class DrinkingWaterSupplyAndSanitationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @drinking_water_supply_and_sanitation = drinking_water_supply_and_sanitations(:one)
  end

  test "should get index" do
    get drinking_water_supply_and_sanitations_url
    assert_response :success
  end

  test "should get new" do
    get new_drinking_water_supply_and_sanitation_url
    assert_response :success
  end

  test "should create drinking_water_supply_and_sanitation" do
    assert_difference('DrinkingWaterSupplyAndSanitation.count') do
      post drinking_water_supply_and_sanitations_url, params: { drinking_water_supply_and_sanitation: { Affected_Districts: @drinking_water_supply_and_sanitation.Affected_Districts, Contaminants: @drinking_water_supply_and_sanitation.Contaminants } }
    end

    assert_redirected_to drinking_water_supply_and_sanitation_url(DrinkingWaterSupplyAndSanitation.last)
  end

  test "should show drinking_water_supply_and_sanitation" do
    get drinking_water_supply_and_sanitation_url(@drinking_water_supply_and_sanitation)
    assert_response :success
  end

  test "should get edit" do
    get edit_drinking_water_supply_and_sanitation_url(@drinking_water_supply_and_sanitation)
    assert_response :success
  end

  test "should update drinking_water_supply_and_sanitation" do
    patch drinking_water_supply_and_sanitation_url(@drinking_water_supply_and_sanitation), params: { drinking_water_supply_and_sanitation: { Affected_Districts: @drinking_water_supply_and_sanitation.Affected_Districts, Contaminants: @drinking_water_supply_and_sanitation.Contaminants } }
    assert_redirected_to drinking_water_supply_and_sanitation_url(@drinking_water_supply_and_sanitation)
  end

  test "should destroy drinking_water_supply_and_sanitation" do
    assert_difference('DrinkingWaterSupplyAndSanitation.count', -1) do
      delete drinking_water_supply_and_sanitation_url(@drinking_water_supply_and_sanitation)
    end

    assert_redirected_to drinking_water_supply_and_sanitations_url
  end
end
