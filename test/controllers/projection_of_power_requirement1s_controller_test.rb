require 'test_helper'

class ProjectionOfPowerRequirement1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projection_of_power_requirement1 = projection_of_power_requirement1s(:one)
  end

  test "should get index" do
    get projection_of_power_requirement1s_url
    assert_response :success
  end

  test "should get new" do
    get new_projection_of_power_requirement1_url
    assert_response :success
  end

  test "should create projection_of_power_requirement1" do
    assert_difference('ProjectionOfPowerRequirement1.count') do
      post projection_of_power_requirement1s_url, params: { projection_of_power_requirement1: { 2017-18: @projection_of_power_requirement1.2017-18, 2018-19: @projection_of_power_requirement1.2018-19, Category_of_Households: @projection_of_power_requirement1.Category_of_Households } }
    end

    assert_redirected_to projection_of_power_requirement1_url(ProjectionOfPowerRequirement1.last)
  end

  test "should show projection_of_power_requirement1" do
    get projection_of_power_requirement1_url(@projection_of_power_requirement1)
    assert_response :success
  end

  test "should get edit" do
    get edit_projection_of_power_requirement1_url(@projection_of_power_requirement1)
    assert_response :success
  end

  test "should update projection_of_power_requirement1" do
    patch projection_of_power_requirement1_url(@projection_of_power_requirement1), params: { projection_of_power_requirement1: { 2017-18: @projection_of_power_requirement1.2017-18, 2018-19: @projection_of_power_requirement1.2018-19, Category_of_Households: @projection_of_power_requirement1.Category_of_Households } }
    assert_redirected_to projection_of_power_requirement1_url(@projection_of_power_requirement1)
  end

  test "should destroy projection_of_power_requirement1" do
    assert_difference('ProjectionOfPowerRequirement1.count', -1) do
      delete projection_of_power_requirement1_url(@projection_of_power_requirement1)
    end

    assert_redirected_to projection_of_power_requirement1s_url
  end
end
