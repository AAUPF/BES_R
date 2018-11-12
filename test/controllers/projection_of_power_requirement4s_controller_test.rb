require 'test_helper'

class ProjectionOfPowerRequirement4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projection_of_power_requirement4 = projection_of_power_requirement4s(:one)
  end

  test "should get index" do
    get projection_of_power_requirement4s_url
    assert_response :success
  end

  test "should get new" do
    get new_projection_of_power_requirement4_url
    assert_response :success
  end

  test "should create projection_of_power_requirement4" do
    assert_difference('ProjectionOfPowerRequirement4.count') do
      post projection_of_power_requirement4s_url, params: { projection_of_power_requirement4: { Estimated_Energy_Availability_at_State_Periphery_MU: @projection_of_power_requirement4.Estimated_Energy_Availability_at_State_Periphery_MU, Estimated_Peak_Availability_at_State_Periphery_MW: @projection_of_power_requirement4.Estimated_Peak_Availability_at_State_Periphery_MW, Total_Capacity_MW: @projection_of_power_requirement4.Total_Capacity_MW, Year: @projection_of_power_requirement4.Year } }
    end

    assert_redirected_to projection_of_power_requirement4_url(ProjectionOfPowerRequirement4.last)
  end

  test "should show projection_of_power_requirement4" do
    get projection_of_power_requirement4_url(@projection_of_power_requirement4)
    assert_response :success
  end

  test "should get edit" do
    get edit_projection_of_power_requirement4_url(@projection_of_power_requirement4)
    assert_response :success
  end

  test "should update projection_of_power_requirement4" do
    patch projection_of_power_requirement4_url(@projection_of_power_requirement4), params: { projection_of_power_requirement4: { Estimated_Energy_Availability_at_State_Periphery_MU: @projection_of_power_requirement4.Estimated_Energy_Availability_at_State_Periphery_MU, Estimated_Peak_Availability_at_State_Periphery_MW: @projection_of_power_requirement4.Estimated_Peak_Availability_at_State_Periphery_MW, Total_Capacity_MW: @projection_of_power_requirement4.Total_Capacity_MW, Year: @projection_of_power_requirement4.Year } }
    assert_redirected_to projection_of_power_requirement4_url(@projection_of_power_requirement4)
  end

  test "should destroy projection_of_power_requirement4" do
    assert_difference('ProjectionOfPowerRequirement4.count', -1) do
      delete projection_of_power_requirement4_url(@projection_of_power_requirement4)
    end

    assert_redirected_to projection_of_power_requirement4s_url
  end
end
