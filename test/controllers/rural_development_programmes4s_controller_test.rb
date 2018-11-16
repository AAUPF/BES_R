require 'test_helper'

class RuralDevelopmentProgrammes4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rural_development_programmes4 = rural_development_programmes4s(:one)
  end

  test "should get index" do
    get rural_development_programmes4s_url
    assert_response :success
  end

  test "should get new" do
    get new_rural_development_programmes4_url
    assert_response :success
  end

  test "should create rural_development_programmes4" do
    assert_difference('RuralDevelopmentProgrammes4.count') do
      post rural_development_programmes4s_url, params: { rural_development_programmes4: { Annual_Physical_Target: @rural_development_programmes4.Annual_Physical_Target, Houses_Completed_for_SC_and_ST: @rural_development_programmes4.Houses_Completed_for_SC_and_ST, Percentage_of_Fund_Utilisation: @rural_development_programmes4.Percentage_of_Fund_Utilisation, Total_Houses_Completed: @rural_development_programmes4.Total_Houses_Completed, Year: @rural_development_programmes4.Year } }
    end

    assert_redirected_to rural_development_programmes4_url(RuralDevelopmentProgrammes4.last)
  end

  test "should show rural_development_programmes4" do
    get rural_development_programmes4_url(@rural_development_programmes4)
    assert_response :success
  end

  test "should get edit" do
    get edit_rural_development_programmes4_url(@rural_development_programmes4)
    assert_response :success
  end

  test "should update rural_development_programmes4" do
    patch rural_development_programmes4_url(@rural_development_programmes4), params: { rural_development_programmes4: { Annual_Physical_Target: @rural_development_programmes4.Annual_Physical_Target, Houses_Completed_for_SC_and_ST: @rural_development_programmes4.Houses_Completed_for_SC_and_ST, Percentage_of_Fund_Utilisation: @rural_development_programmes4.Percentage_of_Fund_Utilisation, Total_Houses_Completed: @rural_development_programmes4.Total_Houses_Completed, Year: @rural_development_programmes4.Year } }
    assert_redirected_to rural_development_programmes4_url(@rural_development_programmes4)
  end

  test "should destroy rural_development_programmes4" do
    assert_difference('RuralDevelopmentProgrammes4.count', -1) do
      delete rural_development_programmes4_url(@rural_development_programmes4)
    end

    assert_redirected_to rural_development_programmes4s_url
  end
end
