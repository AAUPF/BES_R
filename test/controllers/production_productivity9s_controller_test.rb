require 'test_helper'

class ProductionProductivity9sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @production_productivity9 = production_productivity9s(:one)
  end

  test "should get index" do
    get production_productivity9s_url
    assert_response :success
  end

  test "should get new" do
    get new_production_productivity9_url
    assert_response :success
  end

  test "should create production_productivity9" do
    assert_difference('ProductionProductivity9.count') do
      post production_productivity9s_url, params: { production_productivity9: { Area_2015: @production_productivity9.Area_2015, Area_2016: @production_productivity9.Area_2016, Districts: @production_productivity9.Districts, Production_2015: @production_productivity9.Production_2015, Production_2016: @production_productivity9.Production_2016, Productivity_2015: @production_productivity9.Productivity_2015, Productivity_2016: @production_productivity9.Productivity_2016 } }
    end

    assert_redirected_to production_productivity9_url(ProductionProductivity9.last)
  end

  test "should show production_productivity9" do
    get production_productivity9_url(@production_productivity9)
    assert_response :success
  end

  test "should get edit" do
    get edit_production_productivity9_url(@production_productivity9)
    assert_response :success
  end

  test "should update production_productivity9" do
    patch production_productivity9_url(@production_productivity9), params: { production_productivity9: { Area_2015: @production_productivity9.Area_2015, Area_2016: @production_productivity9.Area_2016, Districts: @production_productivity9.Districts, Production_2015: @production_productivity9.Production_2015, Production_2016: @production_productivity9.Production_2016, Productivity_2015: @production_productivity9.Productivity_2015, Productivity_2016: @production_productivity9.Productivity_2016 } }
    assert_redirected_to production_productivity9_url(@production_productivity9)
  end

  test "should destroy production_productivity9" do
    assert_difference('ProductionProductivity9.count', -1) do
      delete production_productivity9_url(@production_productivity9)
    end

    assert_redirected_to production_productivity9s_url
  end
end
