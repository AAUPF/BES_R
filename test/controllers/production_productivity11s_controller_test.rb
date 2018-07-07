require 'test_helper'

class ProductionProductivity11sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @production_productivity11 = production_productivity11s(:one)
  end

  test "should get index" do
    get production_productivity11s_url
    assert_response :success
  end

  test "should get new" do
    get new_production_productivity11_url
    assert_response :success
  end

  test "should create production_productivity11" do
    assert_difference('ProductionProductivity11.count') do
      post production_productivity11s_url, params: { production_productivity11: { Brinjal_Area_2015: @production_productivity11.Brinjal_Area_2015, Brinjal_Area_2016: @production_productivity11.Brinjal_Area_2016, Brinjal_Production_2015: @production_productivity11.Brinjal_Production_2015, Brinjal_Production_2016: @production_productivity11.Brinjal_Production_2016, Cauliflower_Area_2015: @production_productivity11.Cauliflower_Area_2015, Cauliflower_Area_2016: @production_productivity11.Cauliflower_Area_2016, Cauliflower_Production_2015: @production_productivity11.Cauliflower_Production_2015, Cauliflower_Production_2016: @production_productivity11.Cauliflower_Production_2016, Districts: @production_productivity11.Districts, Onion_Area_2015: @production_productivity11.Onion_Area_2015, Onion_Area_2016: @production_productivity11.Onion_Area_2016, Onion_Production_2015: @production_productivity11.Onion_Production_2015, Onion_Production_2016: @production_productivity11.Onion_Production_2016, Potato_Area_2015: @production_productivity11.Potato_Area_2015, Potato_Area_2016: @production_productivity11.Potato_Area_2016, Potato_Production_2015: @production_productivity11.Potato_Production_2015, Potato_Production_2016: @production_productivity11.Potato_Production_2016 } }
    end

    assert_redirected_to production_productivity11_url(ProductionProductivity11.last)
  end

  test "should show production_productivity11" do
    get production_productivity11_url(@production_productivity11)
    assert_response :success
  end

  test "should get edit" do
    get edit_production_productivity11_url(@production_productivity11)
    assert_response :success
  end

  test "should update production_productivity11" do
    patch production_productivity11_url(@production_productivity11), params: { production_productivity11: { Brinjal_Area_2015: @production_productivity11.Brinjal_Area_2015, Brinjal_Area_2016: @production_productivity11.Brinjal_Area_2016, Brinjal_Production_2015: @production_productivity11.Brinjal_Production_2015, Brinjal_Production_2016: @production_productivity11.Brinjal_Production_2016, Cauliflower_Area_2015: @production_productivity11.Cauliflower_Area_2015, Cauliflower_Area_2016: @production_productivity11.Cauliflower_Area_2016, Cauliflower_Production_2015: @production_productivity11.Cauliflower_Production_2015, Cauliflower_Production_2016: @production_productivity11.Cauliflower_Production_2016, Districts: @production_productivity11.Districts, Onion_Area_2015: @production_productivity11.Onion_Area_2015, Onion_Area_2016: @production_productivity11.Onion_Area_2016, Onion_Production_2015: @production_productivity11.Onion_Production_2015, Onion_Production_2016: @production_productivity11.Onion_Production_2016, Potato_Area_2015: @production_productivity11.Potato_Area_2015, Potato_Area_2016: @production_productivity11.Potato_Area_2016, Potato_Production_2015: @production_productivity11.Potato_Production_2015, Potato_Production_2016: @production_productivity11.Potato_Production_2016 } }
    assert_redirected_to production_productivity11_url(@production_productivity11)
  end

  test "should destroy production_productivity11" do
    assert_difference('ProductionProductivity11.count', -1) do
      delete production_productivity11_url(@production_productivity11)
    end

    assert_redirected_to production_productivity11s_url
  end
end
