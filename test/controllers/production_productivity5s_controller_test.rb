require 'test_helper'

class ProductionProductivity5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @production_productivity5 = production_productivity5s(:one)
  end

  test "should get index" do
    get production_productivity5s_url
    assert_response :success
  end

  test "should get new" do
    get new_production_productivity5_url
    assert_response :success
  end

  test "should create production_productivity5" do
    assert_difference('ProductionProductivity5.count') do
      post production_productivity5s_url, params: { production_productivity5: { Area: @production_productivity5.Area, Production: @production_productivity5.Production, Vegetables: @production_productivity5.Vegetables, Year: @production_productivity5.Year } }
    end

    assert_redirected_to production_productivity5_url(ProductionProductivity5.last)
  end

  test "should show production_productivity5" do
    get production_productivity5_url(@production_productivity5)
    assert_response :success
  end

  test "should get edit" do
    get edit_production_productivity5_url(@production_productivity5)
    assert_response :success
  end

  test "should update production_productivity5" do
    patch production_productivity5_url(@production_productivity5), params: { production_productivity5: { Area: @production_productivity5.Area, Production: @production_productivity5.Production, Vegetables: @production_productivity5.Vegetables, Year: @production_productivity5.Year } }
    assert_redirected_to production_productivity5_url(@production_productivity5)
  end

  test "should destroy production_productivity5" do
    assert_difference('ProductionProductivity5.count', -1) do
      delete production_productivity5_url(@production_productivity5)
    end

    assert_redirected_to production_productivity5s_url
  end
end
