require 'test_helper'

class ProductionAndProductivityOfRicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @production_and_productivity_of_rice = production_and_productivity_of_rices(:one)
  end

  test "should get index" do
    get production_and_productivity_of_rices_url
    assert_response :success
  end

  test "should get new" do
    get new_production_and_productivity_of_rice_url
    assert_response :success
  end

  test "should create production_and_productivity_of_rice" do
    assert_difference('ProductionAndProductivityOfRice.count') do
      post production_and_productivity_of_rices_url, params: { production_and_productivity_of_rice: { Area_2015: @production_and_productivity_of_rice.Area_2015, Area_2016: @production_and_productivity_of_rice.Area_2016, Districts: @production_and_productivity_of_rice.Districts, Production_2015: @production_and_productivity_of_rice.Production_2015, Production_2016: @production_and_productivity_of_rice.Production_2016, Productivity_2015: @production_and_productivity_of_rice.Productivity_2015, Productivity_2016: @production_and_productivity_of_rice.Productivity_2016 } }
    end

    assert_redirected_to production_and_productivity_of_rice_url(ProductionAndProductivityOfRice.last)
  end

  test "should show production_and_productivity_of_rice" do
    get production_and_productivity_of_rice_url(@production_and_productivity_of_rice)
    assert_response :success
  end

  test "should get edit" do
    get edit_production_and_productivity_of_rice_url(@production_and_productivity_of_rice)
    assert_response :success
  end

  test "should update production_and_productivity_of_rice" do
    patch production_and_productivity_of_rice_url(@production_and_productivity_of_rice), params: { production_and_productivity_of_rice: { Area_2015: @production_and_productivity_of_rice.Area_2015, Area_2016: @production_and_productivity_of_rice.Area_2016, Districts: @production_and_productivity_of_rice.Districts, Production_2015: @production_and_productivity_of_rice.Production_2015, Production_2016: @production_and_productivity_of_rice.Production_2016, Productivity_2015: @production_and_productivity_of_rice.Productivity_2015, Productivity_2016: @production_and_productivity_of_rice.Productivity_2016 } }
    assert_redirected_to production_and_productivity_of_rice_url(@production_and_productivity_of_rice)
  end

  test "should destroy production_and_productivity_of_rice" do
    assert_difference('ProductionAndProductivityOfRice.count', -1) do
      delete production_and_productivity_of_rice_url(@production_and_productivity_of_rice)
    end

    assert_redirected_to production_and_productivity_of_rices_url
  end
end
