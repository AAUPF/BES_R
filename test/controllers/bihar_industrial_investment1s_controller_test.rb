require 'test_helper'

class BiharIndustrialInvestment1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bihar_industrial_investment1 = bihar_industrial_investment1s(:one)
  end

  test "should get index" do
    get bihar_industrial_investment1s_url
    assert_response :success
  end

  test "should get new" do
    get new_bihar_industrial_investment1_url
    assert_response :success
  end

  test "should create bihar_industrial_investment1" do
    assert_difference('BiharIndustrialInvestment1.count') do
      post bihar_industrial_investment1s_url, params: { bihar_industrial_investment1: { Number_of_Proposed_Units: @bihar_industrial_investment1.Number_of_Proposed_Units, Proposed_Investment: @bihar_industrial_investment1.Proposed_Investment, Sectors: @bihar_industrial_investment1.Sectors } }
    end

    assert_redirected_to bihar_industrial_investment1_url(BiharIndustrialInvestment1.last)
  end

  test "should show bihar_industrial_investment1" do
    get bihar_industrial_investment1_url(@bihar_industrial_investment1)
    assert_response :success
  end

  test "should get edit" do
    get edit_bihar_industrial_investment1_url(@bihar_industrial_investment1)
    assert_response :success
  end

  test "should update bihar_industrial_investment1" do
    patch bihar_industrial_investment1_url(@bihar_industrial_investment1), params: { bihar_industrial_investment1: { Number_of_Proposed_Units: @bihar_industrial_investment1.Number_of_Proposed_Units, Proposed_Investment: @bihar_industrial_investment1.Proposed_Investment, Sectors: @bihar_industrial_investment1.Sectors } }
    assert_redirected_to bihar_industrial_investment1_url(@bihar_industrial_investment1)
  end

  test "should destroy bihar_industrial_investment1" do
    assert_difference('BiharIndustrialInvestment1.count', -1) do
      delete bihar_industrial_investment1_url(@bihar_industrial_investment1)
    end

    assert_redirected_to bihar_industrial_investment1s_url
  end
end
