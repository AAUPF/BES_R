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
      post lands_url, params: { land: { Barren_unculturable_land: @land.Barren_unculturable_land, Barren_unculturable_land_Colour: @land.Barren_unculturable_land_Colour, Cropping_Intensity: @land.Cropping_Intensity, Cropping_Intensity_Colour: @land.Cropping_Intensity_Colour, Culturable_Waste_Land: @land.Culturable_Waste_Land, Culturable_Waste_Land_Colour: @land.Culturable_Waste_Land_Colour, Current_Fallow: @land.Current_Fallow, Current_Fallow_Colour: @land.Current_Fallow_Colour, Districts: @land.Districts, Fallow_land: @land.Fallow_land, Forest: @land.Forest, Forest_Colour: @land.Forest_Colour, Geographical_area: @land.Geographical_area, Geographical_area_Colour: @land.Geographical_area_Colour, Gross_Crop_Area: @land.Gross_Crop_Area, Gross_Crop_Area_Colour: @land.Gross_Crop_Area_Colour, Net_Area_Sown: @land.Net_Area_Sown, Net_Area_Sown_Colour: @land.Net_Area_Sown_Colour, Non_Agriculture_Land_area: @land.Non_Agriculture_Land_area, Non_Agriculture_Land_area_Colour: @land.Non_Agriculture_Land_area_Colour, Non_Agriculture_Perennial_Water_Area: @land.Non_Agriculture_Perennial_Water_Area, Non_Agriculture_Perennial_Water_Area_Colour: @land.Non_Agriculture_Perennial_Water_Area_Colour, Non_Agriculture_Temporary_Water_Area: @land.Non_Agriculture_Temporary_Water_Area, Non_Agriculture_Temporary_Water_Area_Colour: @land.Non_Agriculture_Temporary_Water_Area_Colour, Permanent_Pastures: @land.Permanent_Pastures, Permanent_Pastures_Colour: @land.Permanent_Pastures_Colour, Total_Uncultivable_Land: @land.Total_Uncultivable_Land, Total_Uncultivable_Land_Colour: @land.Total_Uncultivable_Land_Colour, Tree_Crops: @land.Tree_Crops, Tree_Crops_Colour: @land.Tree_Crops_Colour, _ColourFallow_land: @land._ColourFallow_land } }
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
    patch land_url(@land), params: { land: { Barren_unculturable_land: @land.Barren_unculturable_land, Barren_unculturable_land_Colour: @land.Barren_unculturable_land_Colour, Cropping_Intensity: @land.Cropping_Intensity, Cropping_Intensity_Colour: @land.Cropping_Intensity_Colour, Culturable_Waste_Land: @land.Culturable_Waste_Land, Culturable_Waste_Land_Colour: @land.Culturable_Waste_Land_Colour, Current_Fallow: @land.Current_Fallow, Current_Fallow_Colour: @land.Current_Fallow_Colour, Districts: @land.Districts, Fallow_land: @land.Fallow_land, Forest: @land.Forest, Forest_Colour: @land.Forest_Colour, Geographical_area: @land.Geographical_area, Geographical_area_Colour: @land.Geographical_area_Colour, Gross_Crop_Area: @land.Gross_Crop_Area, Gross_Crop_Area_Colour: @land.Gross_Crop_Area_Colour, Net_Area_Sown: @land.Net_Area_Sown, Net_Area_Sown_Colour: @land.Net_Area_Sown_Colour, Non_Agriculture_Land_area: @land.Non_Agriculture_Land_area, Non_Agriculture_Land_area_Colour: @land.Non_Agriculture_Land_area_Colour, Non_Agriculture_Perennial_Water_Area: @land.Non_Agriculture_Perennial_Water_Area, Non_Agriculture_Perennial_Water_Area_Colour: @land.Non_Agriculture_Perennial_Water_Area_Colour, Non_Agriculture_Temporary_Water_Area: @land.Non_Agriculture_Temporary_Water_Area, Non_Agriculture_Temporary_Water_Area_Colour: @land.Non_Agriculture_Temporary_Water_Area_Colour, Permanent_Pastures: @land.Permanent_Pastures, Permanent_Pastures_Colour: @land.Permanent_Pastures_Colour, Total_Uncultivable_Land: @land.Total_Uncultivable_Land, Total_Uncultivable_Land_Colour: @land.Total_Uncultivable_Land_Colour, Tree_Crops: @land.Tree_Crops, Tree_Crops_Colour: @land.Tree_Crops_Colour, _ColourFallow_land: @land._ColourFallow_land } }
    assert_redirected_to land_url(@land)
  end

  test "should destroy land" do
    assert_difference('Land.count', -1) do
      delete land_url(@land)
    end

    assert_redirected_to lands_url
  end
end
