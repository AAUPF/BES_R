require 'test_helper'

class ProductionProductivity12sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @production_productivity12 = production_productivity12s(:one)
  end

  test "should get index" do
    get production_productivity12s_url
    assert_response :success
  end

  test "should get new" do
    get new_production_productivity12_url
    assert_response :success
  end

  test "should create production_productivity12" do
    assert_difference('ProductionProductivity12.count') do
      post production_productivity12s_url, params: { production_productivity12: { Area: @production_productivity12.Area, Districts: @production_productivity12.Districts, Percentage_Sugarcane_Area: @production_productivity12.Percentage_Sugarcane_Area, Percentage_Sugarcane_Production: @production_productivity12.Percentage_Sugarcane_Production, Production: @production_productivity12.Production, Year: @production_productivity12.Year, Yield: @production_productivity12.Yield } }
    end

    assert_redirected_to production_productivity12_url(ProductionProductivity12.last)
  end

  test "should show production_productivity12" do
    get production_productivity12_url(@production_productivity12)
    assert_response :success
  end

  test "should get edit" do
    get edit_production_productivity12_url(@production_productivity12)
    assert_response :success
  end

  test "should update production_productivity12" do
    patch production_productivity12_url(@production_productivity12), params: { production_productivity12: { Area: @production_productivity12.Area, Districts: @production_productivity12.Districts, Percentage_Sugarcane_Area: @production_productivity12.Percentage_Sugarcane_Area, Percentage_Sugarcane_Production: @production_productivity12.Percentage_Sugarcane_Production, Production: @production_productivity12.Production, Year: @production_productivity12.Year, Yield: @production_productivity12.Yield } }
    assert_redirected_to production_productivity12_url(@production_productivity12)
  end

  test "should destroy production_productivity12" do
    assert_difference('ProductionProductivity12.count', -1) do
      delete production_productivity12_url(@production_productivity12)
    end

    assert_redirected_to production_productivity12s_url
  end
end
