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
      post production_productivity11s_url, params: { production_productivity11: { Brinjal_Area: @production_productivity11.Brinjal_Area, Brinjal_Production: @production_productivity11.Brinjal_Production, Cauliflower_Area: @production_productivity11.Cauliflower_Area, Cauliflower_Production: @production_productivity11.Cauliflower_Production, Districts: @production_productivity11.Districts, Onion_Area: @production_productivity11.Onion_Area, Onion_Production: @production_productivity11.Onion_Production, Potato_Area: @production_productivity11.Potato_Area, Potato_Production: @production_productivity11.Potato_Production, Year: @production_productivity11.Year } }
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
    patch production_productivity11_url(@production_productivity11), params: { production_productivity11: { Brinjal_Area: @production_productivity11.Brinjal_Area, Brinjal_Production: @production_productivity11.Brinjal_Production, Cauliflower_Area: @production_productivity11.Cauliflower_Area, Cauliflower_Production: @production_productivity11.Cauliflower_Production, Districts: @production_productivity11.Districts, Onion_Area: @production_productivity11.Onion_Area, Onion_Production: @production_productivity11.Onion_Production, Potato_Area: @production_productivity11.Potato_Area, Potato_Production: @production_productivity11.Potato_Production, Year: @production_productivity11.Year } }
    assert_redirected_to production_productivity11_url(@production_productivity11)
  end

  test "should destroy production_productivity11" do
    assert_difference('ProductionProductivity11.count', -1) do
      delete production_productivity11_url(@production_productivity11)
    end

    assert_redirected_to production_productivity11s_url
  end
end
