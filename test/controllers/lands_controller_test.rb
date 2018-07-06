require 'test_helper'

class LandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @land = lands(:one)
  end

  test "should get index" do
    get lands_url
    assert_response :success
  end

  test "should get new" do
    get new_land_url
    assert_response :success
  end

  test "should create land" do
    assert_difference('Land.count') do
      post lands_url, params: { land: { Barren_and_Unculturable_land: @land.Barren_and_Unculturable_land, Culturable_Waste_Land: @land.Culturable_Waste_Land, Districts: @land.Districts, Forest: @land.Forest, Geographical_Area: @land.Geographical_Area, Non_Agriculture_Land_Area: @land.Non_Agriculture_Land_Area, Non_Agriculture_Perennial: @land.Non_Agriculture_Perennial, Non_Agriculture_Temporary: @land.Non_Agriculture_Temporary } }
    end

    assert_redirected_to land_url(Land.last)
  end

  test "should show land" do
    get land_url(@land)
    assert_response :success
  end

  test "should get edit" do
    get edit_land_url(@land)
    assert_response :success
  end

  test "should update land" do
    patch land_url(@land), params: { land: { Barren_and_Unculturable_land: @land.Barren_and_Unculturable_land, Culturable_Waste_Land: @land.Culturable_Waste_Land, Districts: @land.Districts, Forest: @land.Forest, Geographical_Area: @land.Geographical_Area, Non_Agriculture_Land_Area: @land.Non_Agriculture_Land_Area, Non_Agriculture_Perennial: @land.Non_Agriculture_Perennial, Non_Agriculture_Temporary: @land.Non_Agriculture_Temporary } }
    assert_redirected_to land_url(@land)
  end

  test "should destroy land" do
    assert_difference('Land.count', -1) do
      delete land_url(@land)
    end

    assert_redirected_to lands_url
  end
end
