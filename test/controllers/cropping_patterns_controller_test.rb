require 'test_helper'

class CroppingPatternsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cropping_pattern = cropping_patterns(:one)
  end

  test "should get index" do
    get cropping_patterns_url
    assert_response :success
  end

  test "should get new" do
    get new_cropping_pattern_url
    assert_response :success
  end

  test "should create cropping_pattern" do
    assert_difference('CroppingPattern.count') do
      post cropping_patterns_url, params: { cropping_pattern: { Cereals: @cropping_pattern.Cereals, Fibre_Crops: @cropping_pattern.Fibre_Crops, Food_grains: @cropping_pattern.Food_grains, Oil_seeds: @cropping_pattern.Oil_seeds, Pulses: @cropping_pattern.Pulses, Sugarcane: @cropping_pattern.Sugarcane, Total_Area: @cropping_pattern.Total_Area, Year: @cropping_pattern.Year } }
    end

    assert_redirected_to cropping_pattern_url(CroppingPattern.last)
  end

  test "should show cropping_pattern" do
    get cropping_pattern_url(@cropping_pattern)
    assert_response :success
  end

  test "should get edit" do
    get edit_cropping_pattern_url(@cropping_pattern)
    assert_response :success
  end

  test "should update cropping_pattern" do
    patch cropping_pattern_url(@cropping_pattern), params: { cropping_pattern: { Cereals: @cropping_pattern.Cereals, Fibre_Crops: @cropping_pattern.Fibre_Crops, Food_grains: @cropping_pattern.Food_grains, Oil_seeds: @cropping_pattern.Oil_seeds, Pulses: @cropping_pattern.Pulses, Sugarcane: @cropping_pattern.Sugarcane, Total_Area: @cropping_pattern.Total_Area, Year: @cropping_pattern.Year } }
    assert_redirected_to cropping_pattern_url(@cropping_pattern)
  end

  test "should destroy cropping_pattern" do
    assert_difference('CroppingPattern.count', -1) do
      delete cropping_pattern_url(@cropping_pattern)
    end

    assert_redirected_to cropping_patterns_url
  end
end
