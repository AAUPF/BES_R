require 'test_helper'

class SixthEconomicCensus2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sixth_economic_census2 = sixth_economic_census2s(:one)
  end

  test "should get index" do
    get sixth_economic_census2s_url
    assert_response :success
  end

  test "should get new" do
    get new_sixth_economic_census2_url
    assert_response :success
  end

  test "should create sixth_economic_census2" do
    assert_difference('SixthEconomicCensus2.count') do
      post sixth_economic_census2s_url, params: { sixth_economic_census2: { District: @sixth_economic_census2.District, Number_of_Establishments_Rural: @sixth_economic_census2.Number_of_Establishments_Rural, Number_of_Establishments_Urban: @sixth_economic_census2.Number_of_Establishments_Urban, Percentage_Share_Establishments: @sixth_economic_census2.Percentage_Share_Establishments, Percentage_Share_Population: @sixth_economic_census2.Percentage_Share_Population, Total_Number_of_Establishments: @sixth_economic_census2.Total_Number_of_Establishments } }
    end

    assert_redirected_to sixth_economic_census2_url(SixthEconomicCensus2.last)
  end

  test "should show sixth_economic_census2" do
    get sixth_economic_census2_url(@sixth_economic_census2)
    assert_response :success
  end

  test "should get edit" do
    get edit_sixth_economic_census2_url(@sixth_economic_census2)
    assert_response :success
  end

  test "should update sixth_economic_census2" do
    patch sixth_economic_census2_url(@sixth_economic_census2), params: { sixth_economic_census2: { District: @sixth_economic_census2.District, Number_of_Establishments_Rural: @sixth_economic_census2.Number_of_Establishments_Rural, Number_of_Establishments_Urban: @sixth_economic_census2.Number_of_Establishments_Urban, Percentage_Share_Establishments: @sixth_economic_census2.Percentage_Share_Establishments, Percentage_Share_Population: @sixth_economic_census2.Percentage_Share_Population, Total_Number_of_Establishments: @sixth_economic_census2.Total_Number_of_Establishments } }
    assert_redirected_to sixth_economic_census2_url(@sixth_economic_census2)
  end

  test "should destroy sixth_economic_census2" do
    assert_difference('SixthEconomicCensus2.count', -1) do
      delete sixth_economic_census2_url(@sixth_economic_census2)
    end

    assert_redirected_to sixth_economic_census2s_url
  end
end
