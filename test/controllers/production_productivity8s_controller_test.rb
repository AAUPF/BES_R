require 'test_helper'

class ProductionProductivity8sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @production_productivity8 = production_productivity8s(:one)
  end

  test "should get index" do
    get production_productivity8s_url
    assert_response :success
  end

  test "should get new" do
    get new_production_productivity8_url
    assert_response :success
  end

  test "should create production_productivity8" do
    assert_difference('ProductionProductivity8.count') do
      post production_productivity8s_url, params: { production_productivity8: { Area_2015: @production_productivity8.Area_2015, Area_2016: @production_productivity8.Area_2016, Districts: @production_productivity8.Districts, Production_2015: @production_productivity8.Production_2015, Production_2016: @production_productivity8.Production_2016, Productivity_2015: @production_productivity8.Productivity_2015, Productivity_2016: @production_productivity8.Productivity_2016 } }
    end

    assert_redirected_to production_productivity8_url(ProductionProductivity8.last)
  end

  test "should show production_productivity8" do
    get production_productivity8_url(@production_productivity8)
    assert_response :success
  end

  test "should get edit" do
    get edit_production_productivity8_url(@production_productivity8)
    assert_response :success
  end

  test "should update production_productivity8" do
    patch production_productivity8_url(@production_productivity8), params: { production_productivity8: { Area_2015: @production_productivity8.Area_2015, Area_2016: @production_productivity8.Area_2016, Districts: @production_productivity8.Districts, Production_2015: @production_productivity8.Production_2015, Production_2016: @production_productivity8.Production_2016, Productivity_2015: @production_productivity8.Productivity_2015, Productivity_2016: @production_productivity8.Productivity_2016 } }
    assert_redirected_to production_productivity8_url(@production_productivity8)
  end

  test "should destroy production_productivity8" do
    assert_difference('ProductionProductivity8.count', -1) do
      delete production_productivity8_url(@production_productivity8)
    end

    assert_redirected_to production_productivity8s_url
  end
end
