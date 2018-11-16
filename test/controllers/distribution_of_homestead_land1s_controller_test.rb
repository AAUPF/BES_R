require 'test_helper'

class DistributionOfHomesteadLand1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @distribution_of_homestead_land1 = distribution_of_homestead_land1s(:one)
  end

  test "should get index" do
    get distribution_of_homestead_land1s_url
    assert_response :success
  end

  test "should get new" do
    get new_distribution_of_homestead_land1_url
    assert_response :success
  end

  test "should create distribution_of_homestead_land1" do
    assert_difference('DistributionOfHomesteadLand1.count') do
      post distribution_of_homestead_land1s_url, params: { distribution_of_homestead_land1: { BC_Schedule_1: @distribution_of_homestead_land1.BC_Schedule_1, BC_Schedule_2: @distribution_of_homestead_land1.BC_Schedule_2, Item: @distribution_of_homestead_land1.Item, Mahadalit: @distribution_of_homestead_land1.Mahadalit, Percentage_of_BC_Schedule_1: @distribution_of_homestead_land1.Percentage_of_BC_Schedule_1, Percentage_of_BC_Schedule_2: @distribution_of_homestead_land1.Percentage_of_BC_Schedule_2, Percentage_of_Mahadalit: @distribution_of_homestead_land1.Percentage_of_Mahadalit, Percentage_of_SC: @distribution_of_homestead_land1.Percentage_of_SC, Percentage_of_ST: @distribution_of_homestead_land1.Percentage_of_ST, SC: @distribution_of_homestead_land1.SC, ST: @distribution_of_homestead_land1.ST, Total: @distribution_of_homestead_land1.Total, Total_Percentage: @distribution_of_homestead_land1.Total_Percentage } }
    end

    assert_redirected_to distribution_of_homestead_land1_url(DistributionOfHomesteadLand1.last)
  end

  test "should show distribution_of_homestead_land1" do
    get distribution_of_homestead_land1_url(@distribution_of_homestead_land1)
    assert_response :success
  end

  test "should get edit" do
    get edit_distribution_of_homestead_land1_url(@distribution_of_homestead_land1)
    assert_response :success
  end

  test "should update distribution_of_homestead_land1" do
    patch distribution_of_homestead_land1_url(@distribution_of_homestead_land1), params: { distribution_of_homestead_land1: { BC_Schedule_1: @distribution_of_homestead_land1.BC_Schedule_1, BC_Schedule_2: @distribution_of_homestead_land1.BC_Schedule_2, Item: @distribution_of_homestead_land1.Item, Mahadalit: @distribution_of_homestead_land1.Mahadalit, Percentage_of_BC_Schedule_1: @distribution_of_homestead_land1.Percentage_of_BC_Schedule_1, Percentage_of_BC_Schedule_2: @distribution_of_homestead_land1.Percentage_of_BC_Schedule_2, Percentage_of_Mahadalit: @distribution_of_homestead_land1.Percentage_of_Mahadalit, Percentage_of_SC: @distribution_of_homestead_land1.Percentage_of_SC, Percentage_of_ST: @distribution_of_homestead_land1.Percentage_of_ST, SC: @distribution_of_homestead_land1.SC, ST: @distribution_of_homestead_land1.ST, Total: @distribution_of_homestead_land1.Total, Total_Percentage: @distribution_of_homestead_land1.Total_Percentage } }
    assert_redirected_to distribution_of_homestead_land1_url(@distribution_of_homestead_land1)
  end

  test "should destroy distribution_of_homestead_land1" do
    assert_difference('DistributionOfHomesteadLand1.count', -1) do
      delete distribution_of_homestead_land1_url(@distribution_of_homestead_land1)
    end

    assert_redirected_to distribution_of_homestead_land1s_url
  end
end
