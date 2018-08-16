require 'test_helper'

class ProductionProductivity7sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @production_productivity7 = production_productivity7s(:one)
  end

  test "should get index" do
    get production_productivity7s_url
    assert_response :success
  end

  test "should get new" do
    get new_production_productivity7_url
    assert_response :success
  end

  test "should create production_productivity7" do
    assert_difference('ProductionProductivity7.count') do
      post production_productivity7s_url, params: { production_productivity7: { Area: @production_productivity7.Area, Districts: @production_productivity7.Districts, Percentage_Area: @production_productivity7.Percentage_Area, Percentage_Production: @production_productivity7.Percentage_Production, Production: @production_productivity7.Production, Productivity: @production_productivity7.Productivity, Year: @production_productivity7.Year } }
    end

    assert_redirected_to production_productivity7_url(ProductionProductivity7.last)
  end

  test "should show production_productivity7" do
    get production_productivity7_url(@production_productivity7)
    assert_response :success
  end

  test "should get edit" do
    get edit_production_productivity7_url(@production_productivity7)
    assert_response :success
  end

  test "should update production_productivity7" do
    patch production_productivity7_url(@production_productivity7), params: { production_productivity7: { Area: @production_productivity7.Area, Districts: @production_productivity7.Districts, Percentage_Area: @production_productivity7.Percentage_Area, Percentage_Production: @production_productivity7.Percentage_Production, Production: @production_productivity7.Production, Productivity: @production_productivity7.Productivity, Year: @production_productivity7.Year } }
    assert_redirected_to production_productivity7_url(@production_productivity7)
  end

  test "should destroy production_productivity7" do
    assert_difference('ProductionProductivity7.count', -1) do
      delete production_productivity7_url(@production_productivity7)
    end

    assert_redirected_to production_productivity7s_url
  end
end
