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
      post production_productivity7s_url, params: { production_productivity7: { Area_2015: @production_productivity7.Area_2015, Area_2016: @production_productivity7.Area_2016, Districts: @production_productivity7.Districts, Production_2015: @production_productivity7.Production_2015, Production_2016: @production_productivity7.Production_2016, Productivity_2015: @production_productivity7.Productivity_2015, Productivity_2016: @production_productivity7.Productivity_2016 } }
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
    patch production_productivity7_url(@production_productivity7), params: { production_productivity7: { Area_2015: @production_productivity7.Area_2015, Area_2016: @production_productivity7.Area_2016, Districts: @production_productivity7.Districts, Production_2015: @production_productivity7.Production_2015, Production_2016: @production_productivity7.Production_2016, Productivity_2015: @production_productivity7.Productivity_2015, Productivity_2016: @production_productivity7.Productivity_2016 } }
    assert_redirected_to production_productivity7_url(@production_productivity7)
  end

  test "should destroy production_productivity7" do
    assert_difference('ProductionProductivity7.count', -1) do
      delete production_productivity7_url(@production_productivity7)
    end

    assert_redirected_to production_productivity7s_url
  end
end
