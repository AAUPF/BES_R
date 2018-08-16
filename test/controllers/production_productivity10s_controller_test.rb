require 'test_helper'

class ProductionProductivity10sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @production_productivity10 = production_productivity10s(:one)
  end

  test "should get index" do
    get production_productivity10s_url
    assert_response :success
  end

  test "should get new" do
    get new_production_productivity10_url
    assert_response :success
  end

  test "should create production_productivity10" do
    assert_difference('ProductionProductivity10.count') do
      post production_productivity10s_url, params: { production_productivity10: { Area: @production_productivity10.Area, Banana_Area: @production_productivity10.Banana_Area, Banana_Production: @production_productivity10.Banana_Production, Districts: @production_productivity10.Districts, Guava_Area: @production_productivity10.Guava_Area, Guava_Production: @production_productivity10.Guava_Production, Litchi_Area: @production_productivity10.Litchi_Area, Litchi_Production: @production_productivity10.Litchi_Production, Mango_Area: @production_productivity10.Mango_Area, Mango_Production: @production_productivity10.Mango_Production, Percentage_Banana_Area: @production_productivity10.Percentage_Banana_Area, Percentage_Banana_Production: @production_productivity10.Percentage_Banana_Production, Percentage_Guava_Area: @production_productivity10.Percentage_Guava_Area, Percentage_Guava_Production: @production_productivity10.Percentage_Guava_Production, Percentage_Litchi_Area: @production_productivity10.Percentage_Litchi_Area, Percentage_Litchi_Production: @production_productivity10.Percentage_Litchi_Production, Percentage_Mango_Area: @production_productivity10.Percentage_Mango_Area, Percentage_Mango_Production: @production_productivity10.Percentage_Mango_Production, Year: @production_productivity10.Year } }
    end

    assert_redirected_to production_productivity10_url(ProductionProductivity10.last)
  end

  test "should show production_productivity10" do
    get production_productivity10_url(@production_productivity10)
    assert_response :success
  end

  test "should get edit" do
    get edit_production_productivity10_url(@production_productivity10)
    assert_response :success
  end

  test "should update production_productivity10" do
    patch production_productivity10_url(@production_productivity10), params: { production_productivity10: { Area: @production_productivity10.Area, Banana_Area: @production_productivity10.Banana_Area, Banana_Production: @production_productivity10.Banana_Production, Districts: @production_productivity10.Districts, Guava_Area: @production_productivity10.Guava_Area, Guava_Production: @production_productivity10.Guava_Production, Litchi_Area: @production_productivity10.Litchi_Area, Litchi_Production: @production_productivity10.Litchi_Production, Mango_Area: @production_productivity10.Mango_Area, Mango_Production: @production_productivity10.Mango_Production, Percentage_Banana_Area: @production_productivity10.Percentage_Banana_Area, Percentage_Banana_Production: @production_productivity10.Percentage_Banana_Production, Percentage_Guava_Area: @production_productivity10.Percentage_Guava_Area, Percentage_Guava_Production: @production_productivity10.Percentage_Guava_Production, Percentage_Litchi_Area: @production_productivity10.Percentage_Litchi_Area, Percentage_Litchi_Production: @production_productivity10.Percentage_Litchi_Production, Percentage_Mango_Area: @production_productivity10.Percentage_Mango_Area, Percentage_Mango_Production: @production_productivity10.Percentage_Mango_Production, Year: @production_productivity10.Year } }
    assert_redirected_to production_productivity10_url(@production_productivity10)
  end

  test "should destroy production_productivity10" do
    assert_difference('ProductionProductivity10.count', -1) do
      delete production_productivity10_url(@production_productivity10)
    end

    assert_redirected_to production_productivity10s_url
  end
end
