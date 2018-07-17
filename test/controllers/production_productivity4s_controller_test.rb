require 'test_helper'

class ProductionProductivity4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @production_productivity4 = production_productivity4s(:one)
  end

  test "should get index" do
    get production_productivity4s_url
    assert_response :success
  end

  test "should get new" do
    get new_production_productivity4_url
    assert_response :success
  end

  test "should create production_productivity4" do
    assert_difference('ProductionProductivity4.count') do
      post production_productivity4s_url, params: { production_productivity4: { Area: @production_productivity4.Area, Fruits: @production_productivity4.Fruits, Production: @production_productivity4.Production, Year: @production_productivity4.Year } }
    end

    assert_redirected_to production_productivity4_url(ProductionProductivity4.last)
  end

  test "should show production_productivity4" do
    get production_productivity4_url(@production_productivity4)
    assert_response :success
  end

  test "should get edit" do
    get edit_production_productivity4_url(@production_productivity4)
    assert_response :success
  end

  test "should update production_productivity4" do
    patch production_productivity4_url(@production_productivity4), params: { production_productivity4: { Area: @production_productivity4.Area, Fruits: @production_productivity4.Fruits, Production: @production_productivity4.Production, Year: @production_productivity4.Year } }
    assert_redirected_to production_productivity4_url(@production_productivity4)
  end

  test "should destroy production_productivity4" do
    assert_difference('ProductionProductivity4.count', -1) do
      delete production_productivity4_url(@production_productivity4)
    end

    assert_redirected_to production_productivity4s_url
  end
end
