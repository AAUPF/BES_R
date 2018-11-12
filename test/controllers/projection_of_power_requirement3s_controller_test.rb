require 'test_helper'

class ProjectionOfPowerRequirement3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projection_of_power_requirement3 = projection_of_power_requirement3s(:one)
  end

  test "should get index" do
    get projection_of_power_requirement3s_url
    assert_response :success
  end

  test "should get new" do
    get new_projection_of_power_requirement3_url
    assert_response :success
  end

  test "should create projection_of_power_requirement3" do
    assert_difference('ProjectionOfPowerRequirement3.count') do
      post projection_of_power_requirement3s_url, params: { projection_of_power_requirement3: { 2017-18: @projection_of_power_requirement3.2017-18, 2018-19: @projection_of_power_requirement3.2018-19, Indicator: @projection_of_power_requirement3.Indicator, Mar-17: @projection_of_power_requirement3.Mar-17, Sector: @projection_of_power_requirement3.Sector } }
    end

    assert_redirected_to projection_of_power_requirement3_url(ProjectionOfPowerRequirement3.last)
  end

  test "should show projection_of_power_requirement3" do
    get projection_of_power_requirement3_url(@projection_of_power_requirement3)
    assert_response :success
  end

  test "should get edit" do
    get edit_projection_of_power_requirement3_url(@projection_of_power_requirement3)
    assert_response :success
  end

  test "should update projection_of_power_requirement3" do
    patch projection_of_power_requirement3_url(@projection_of_power_requirement3), params: { projection_of_power_requirement3: { 2017-18: @projection_of_power_requirement3.2017-18, 2018-19: @projection_of_power_requirement3.2018-19, Indicator: @projection_of_power_requirement3.Indicator, Mar-17: @projection_of_power_requirement3.Mar-17, Sector: @projection_of_power_requirement3.Sector } }
    assert_redirected_to projection_of_power_requirement3_url(@projection_of_power_requirement3)
  end

  test "should destroy projection_of_power_requirement3" do
    assert_difference('ProjectionOfPowerRequirement3.count', -1) do
      delete projection_of_power_requirement3_url(@projection_of_power_requirement3)
    end

    assert_redirected_to projection_of_power_requirement3s_url
  end
end
