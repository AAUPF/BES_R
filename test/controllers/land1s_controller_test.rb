require 'test_helper'

class Land1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @land1 = land1s(:one)
  end

  test "should get index" do
    get land1s_url
    assert_response :success
  end

  test "should get new" do
    get new_land1_url
    assert_response :success
  end

  test "should create land1" do
    assert_difference('Land1.count') do
      post land1s_url, params: { land1: { Barren_Unculturable_Land: @land1.Barren_Unculturable_Land, Cropping_Intensity: @land1.Cropping_Intensity, Culturable_Waste: @land1.Culturable_Waste, Current_Fallow: @land1.Current_Fallow, Fallow_Land_excl_Current_Fallow: @land1.Fallow_Land_excl_Current_Fallow, Forests: @land1.Forests, Geographical_Area: @land1.Geographical_Area, Gross_Sown_Area: @land1.Gross_Sown_Area, Land_Area: @land1.Land_Area, Land_put_to_Non_agricultural_use: @land1.Land_put_to_Non_agricultural_use, Land_under_Tree_Crops: @land1.Land_under_Tree_Crops, Net_Sown_Area: @land1.Net_Sown_Area, Permanent_Pastures: @land1.Permanent_Pastures, Total_Unculturable_Land: @land1.Total_Unculturable_Land, Water_Area: @land1.Water_Area, Year: @land1.Year } }
    end

    assert_redirected_to land1_url(Land1.last)
  end

  test "should show land1" do
    get land1_url(@land1)
    assert_response :success
  end

  test "should get edit" do
    get edit_land1_url(@land1)
    assert_response :success
  end

  test "should update land1" do
    patch land1_url(@land1), params: { land1: { Barren_Unculturable_Land: @land1.Barren_Unculturable_Land, Cropping_Intensity: @land1.Cropping_Intensity, Culturable_Waste: @land1.Culturable_Waste, Current_Fallow: @land1.Current_Fallow, Fallow_Land_excl_Current_Fallow: @land1.Fallow_Land_excl_Current_Fallow, Forests: @land1.Forests, Geographical_Area: @land1.Geographical_Area, Gross_Sown_Area: @land1.Gross_Sown_Area, Land_Area: @land1.Land_Area, Land_put_to_Non_agricultural_use: @land1.Land_put_to_Non_agricultural_use, Land_under_Tree_Crops: @land1.Land_under_Tree_Crops, Net_Sown_Area: @land1.Net_Sown_Area, Permanent_Pastures: @land1.Permanent_Pastures, Total_Unculturable_Land: @land1.Total_Unculturable_Land, Water_Area: @land1.Water_Area, Year: @land1.Year } }
    assert_redirected_to land1_url(@land1)
  end

  test "should destroy land1" do
    assert_difference('Land1.count', -1) do
      delete land1_url(@land1)
    end

    assert_redirected_to land1s_url
  end
end
