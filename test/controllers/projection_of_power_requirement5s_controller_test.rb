require 'test_helper'

class ProjectionOfPowerRequirement5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projection_of_power_requirement5 = projection_of_power_requirement5s(:one)
  end

  test "should get index" do
    get projection_of_power_requirement5s_url
    assert_response :success
  end

  test "should get new" do
    get new_projection_of_power_requirement5_url
    assert_response :success
  end

  test "should create projection_of_power_requirement5" do
    assert_difference('ProjectionOfPowerRequirement5.count') do
      post projection_of_power_requirement5s_url, params: { projection_of_power_requirement5: { 2017-18: @projection_of_power_requirement5.2017-18, 2018-19: @projection_of_power_requirement5.2018-19, 2019-20: @projection_of_power_requirement5.2019-20, Sector: @projection_of_power_requirement5.Sector } }
    end

    assert_redirected_to projection_of_power_requirement5_url(ProjectionOfPowerRequirement5.last)
  end

  test "should show projection_of_power_requirement5" do
    get projection_of_power_requirement5_url(@projection_of_power_requirement5)
    assert_response :success
  end

  test "should get edit" do
    get edit_projection_of_power_requirement5_url(@projection_of_power_requirement5)
    assert_response :success
  end

  test "should update projection_of_power_requirement5" do
    patch projection_of_power_requirement5_url(@projection_of_power_requirement5), params: { projection_of_power_requirement5: { 2017-18: @projection_of_power_requirement5.2017-18, 2018-19: @projection_of_power_requirement5.2018-19, 2019-20: @projection_of_power_requirement5.2019-20, Sector: @projection_of_power_requirement5.Sector } }
    assert_redirected_to projection_of_power_requirement5_url(@projection_of_power_requirement5)
  end

  test "should destroy projection_of_power_requirement5" do
    assert_difference('ProjectionOfPowerRequirement5.count', -1) do
      delete projection_of_power_requirement5_url(@projection_of_power_requirement5)
    end

    assert_redirected_to projection_of_power_requirement5s_url
  end
end
