require 'test_helper'

class ProjectionOfPowerRequirement2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projection_of_power_requirement2 = projection_of_power_requirement2s(:one)
  end

  test "should get index" do
    get projection_of_power_requirement2s_url
    assert_response :success
  end

  test "should get new" do
    get new_projection_of_power_requirement2_url
    assert_response :success
  end

  test "should create projection_of_power_requirement2" do
    assert_difference('ProjectionOfPowerRequirement2.count') do
      post projection_of_power_requirement2s_url, params: { projection_of_power_requirement2: { 2017-18: @projection_of_power_requirement2.2017-18, 2018-19: @projection_of_power_requirement2.2018-19, Indicators: @projection_of_power_requirement2.Indicators } }
    end

    assert_redirected_to projection_of_power_requirement2_url(ProjectionOfPowerRequirement2.last)
  end

  test "should show projection_of_power_requirement2" do
    get projection_of_power_requirement2_url(@projection_of_power_requirement2)
    assert_response :success
  end

  test "should get edit" do
    get edit_projection_of_power_requirement2_url(@projection_of_power_requirement2)
    assert_response :success
  end

  test "should update projection_of_power_requirement2" do
    patch projection_of_power_requirement2_url(@projection_of_power_requirement2), params: { projection_of_power_requirement2: { 2017-18: @projection_of_power_requirement2.2017-18, 2018-19: @projection_of_power_requirement2.2018-19, Indicators: @projection_of_power_requirement2.Indicators } }
    assert_redirected_to projection_of_power_requirement2_url(@projection_of_power_requirement2)
  end

  test "should destroy projection_of_power_requirement2" do
    assert_difference('ProjectionOfPowerRequirement2.count', -1) do
      delete projection_of_power_requirement2_url(@projection_of_power_requirement2)
    end

    assert_redirected_to projection_of_power_requirement2s_url
  end
end
