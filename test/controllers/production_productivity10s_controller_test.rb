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
      post production_productivity10s_url, params: { production_productivity10: { Banana_Area_2015: @production_productivity10.Banana_Area_2015, Banana_Area_2016: @production_productivity10.Banana_Area_2016, Banana_Production_2015: @production_productivity10.Banana_Production_2015, Banana_Production_2016: @production_productivity10.Banana_Production_2016, Districts: @production_productivity10.Districts, Guava_Area_2015: @production_productivity10.Guava_Area_2015, Guava_Area_2016: @production_productivity10.Guava_Area_2016, Guava_Production_2015: @production_productivity10.Guava_Production_2015, Guava_Production_2016: @production_productivity10.Guava_Production_2016, Litchi_Area_2015: @production_productivity10.Litchi_Area_2015, Litchi_Area_2016: @production_productivity10.Litchi_Area_2016, Litchi_Production_2015: @production_productivity10.Litchi_Production_2015, Litchi_Production_2016: @production_productivity10.Litchi_Production_2016, Mango_Area_2015: @production_productivity10.Mango_Area_2015, Mango_Area_2016: @production_productivity10.Mango_Area_2016, Mango_Production_2015: @production_productivity10.Mango_Production_2015, Mango_Production_2016: @production_productivity10.Mango_Production_2016 } }
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
    patch production_productivity10_url(@production_productivity10), params: { production_productivity10: { Banana_Area_2015: @production_productivity10.Banana_Area_2015, Banana_Area_2016: @production_productivity10.Banana_Area_2016, Banana_Production_2015: @production_productivity10.Banana_Production_2015, Banana_Production_2016: @production_productivity10.Banana_Production_2016, Districts: @production_productivity10.Districts, Guava_Area_2015: @production_productivity10.Guava_Area_2015, Guava_Area_2016: @production_productivity10.Guava_Area_2016, Guava_Production_2015: @production_productivity10.Guava_Production_2015, Guava_Production_2016: @production_productivity10.Guava_Production_2016, Litchi_Area_2015: @production_productivity10.Litchi_Area_2015, Litchi_Area_2016: @production_productivity10.Litchi_Area_2016, Litchi_Production_2015: @production_productivity10.Litchi_Production_2015, Litchi_Production_2016: @production_productivity10.Litchi_Production_2016, Mango_Area_2015: @production_productivity10.Mango_Area_2015, Mango_Area_2016: @production_productivity10.Mango_Area_2016, Mango_Production_2015: @production_productivity10.Mango_Production_2015, Mango_Production_2016: @production_productivity10.Mango_Production_2016 } }
    assert_redirected_to production_productivity10_url(@production_productivity10)
  end

  test "should destroy production_productivity10" do
    assert_difference('ProductionProductivity10.count', -1) do
      delete production_productivity10_url(@production_productivity10)
    end

    assert_redirected_to production_productivity10s_url
  end
end
