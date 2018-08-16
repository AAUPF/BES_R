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
      post lands_url, params: { land: { Barren_unculturable_land: @land.Barren_unculturable_land, Cropping_Intensity: @land.Cropping_Intensity, Culturable_Waste_Land: @land.Culturable_Waste_Land, Current_Fallow: @land.Current_Fallow, Districts: @land.Districts, Fallow_land: @land.Fallow_land, Forest: @land.Forest, Geographical_area: @land.Geographical_area, Gross_Crop_Area: @land.Gross_Crop_Area, Net_Area_Sown: @land.Net_Area_Sown, Non_Agriculture_Land_area: @land.Non_Agriculture_Land_area, Non_Agriculture_Perennial_Water_Area: @land.Non_Agriculture_Perennial_Water_Area, Non_Agriculture_Temporary_Water_Area: @land.Non_Agriculture_Temporary_Water_Area, Percentage_Barren_unculturable_land: @land.Percentage_Barren_unculturable_land, Percentage_Culturable_Waste_Land: @land.Percentage_Culturable_Waste_Land, Percentage_Current_Fallow: @land.Percentage_Current_Fallow, Percentage_Fallow_land: @land.Percentage_Fallow_land, Percentage_Forest: @land.Percentage_Forest, Percentage_Geographical_area: @land.Percentage_Geographical_area, Percentage_Net_Area_Sown: @land.Percentage_Net_Area_Sown, Percentage_Non_Agriculture_Land_area: @land.Percentage_Non_Agriculture_Land_area, Percentage_Non_Agriculture_Perennial_Water_Area: @land.Percentage_Non_Agriculture_Perennial_Water_Area, Percentage_Permanent_Pastures: @land.Percentage_Permanent_Pastures, Percentage_Total_Uncultivable_Land: @land.Percentage_Total_Uncultivable_Land, Percentage_Tree_Crops: @land.Percentage_Tree_Crops, Permanent_Pastures: @land.Permanent_Pastures, Total_Uncultivable_Land: @land.Total_Uncultivable_Land, Tree_Crops: @land.Tree_Crops } }
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
    patch land_url(@land), params: { land: { Barren_unculturable_land: @land.Barren_unculturable_land, Cropping_Intensity: @land.Cropping_Intensity, Culturable_Waste_Land: @land.Culturable_Waste_Land, Current_Fallow: @land.Current_Fallow, Districts: @land.Districts, Fallow_land: @land.Fallow_land, Forest: @land.Forest, Geographical_area: @land.Geographical_area, Gross_Crop_Area: @land.Gross_Crop_Area, Net_Area_Sown: @land.Net_Area_Sown, Non_Agriculture_Land_area: @land.Non_Agriculture_Land_area, Non_Agriculture_Perennial_Water_Area: @land.Non_Agriculture_Perennial_Water_Area, Non_Agriculture_Temporary_Water_Area: @land.Non_Agriculture_Temporary_Water_Area, Percentage_Barren_unculturable_land: @land.Percentage_Barren_unculturable_land, Percentage_Culturable_Waste_Land: @land.Percentage_Culturable_Waste_Land, Percentage_Current_Fallow: @land.Percentage_Current_Fallow, Percentage_Fallow_land: @land.Percentage_Fallow_land, Percentage_Forest: @land.Percentage_Forest, Percentage_Geographical_area: @land.Percentage_Geographical_area, Percentage_Net_Area_Sown: @land.Percentage_Net_Area_Sown, Percentage_Non_Agriculture_Land_area: @land.Percentage_Non_Agriculture_Land_area, Percentage_Non_Agriculture_Perennial_Water_Area: @land.Percentage_Non_Agriculture_Perennial_Water_Area, Percentage_Permanent_Pastures: @land.Percentage_Permanent_Pastures, Percentage_Total_Uncultivable_Land: @land.Percentage_Total_Uncultivable_Land, Percentage_Tree_Crops: @land.Percentage_Tree_Crops, Permanent_Pastures: @land.Permanent_Pastures, Total_Uncultivable_Land: @land.Total_Uncultivable_Land, Tree_Crops: @land.Tree_Crops } }
    assert_redirected_to land_url(@land)
  end

  test "should destroy land" do
    assert_difference('Land.count', -1) do
      delete land_url(@land)
    end

    assert_redirected_to lands_url
  end
end
