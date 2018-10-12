require 'test_helper'

class SixthEconomicCensus1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sixth_economic_census1 = sixth_economic_census1s(:one)
  end

  test "should get index" do
    get sixth_economic_census1s_url
    assert_response :success
  end

  test "should get new" do
    get new_sixth_economic_census1_url
    assert_response :success
  end

  test "should create sixth_economic_census1" do
    assert_difference('SixthEconomicCensus1.count') do
      post sixth_economic_census1s_url, params: { sixth_economic_census1: { Number_2005: @sixth_economic_census1.Number_2005, Number_2013: @sixth_economic_census1.Number_2013, Percentage_Increase: @sixth_economic_census1.Percentage_Increase, Variable1: @sixth_economic_census1.Variable1, Variable2: @sixth_economic_census1.Variable2 } }
    end

    assert_redirected_to sixth_economic_census1_url(SixthEconomicCensus1.last)
  end

  test "should show sixth_economic_census1" do
    get sixth_economic_census1_url(@sixth_economic_census1)
    assert_response :success
  end

  test "should get edit" do
    get edit_sixth_economic_census1_url(@sixth_economic_census1)
    assert_response :success
  end

  test "should update sixth_economic_census1" do
    patch sixth_economic_census1_url(@sixth_economic_census1), params: { sixth_economic_census1: { Number_2005: @sixth_economic_census1.Number_2005, Number_2013: @sixth_economic_census1.Number_2013, Percentage_Increase: @sixth_economic_census1.Percentage_Increase, Variable1: @sixth_economic_census1.Variable1, Variable2: @sixth_economic_census1.Variable2 } }
    assert_redirected_to sixth_economic_census1_url(@sixth_economic_census1)
  end

  test "should destroy sixth_economic_census1" do
    assert_difference('SixthEconomicCensus1.count', -1) do
      delete sixth_economic_census1_url(@sixth_economic_census1)
    end

    assert_redirected_to sixth_economic_census1s_url
  end
end
