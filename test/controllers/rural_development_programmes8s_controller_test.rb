require 'test_helper'

class RuralDevelopmentProgrammes8sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rural_development_programmes8 = rural_development_programmes8s(:one)
  end

  test "should get index" do
    get rural_development_programmes8s_url
    assert_response :success
  end

  test "should get new" do
    get new_rural_development_programmes8_url
    assert_response :success
  end

  test "should create rural_development_programmes8" do
    assert_difference('RuralDevelopmentProgrammes8.count') do
      post rural_development_programmes8s_url, params: { rural_development_programmes8: { Districts: @rural_development_programmes8.Districts, Fund_available: @rural_development_programmes8.Fund_available, Fund_utilised: @rural_development_programmes8.Fund_utilised, Percentage_of_utilisation: @rural_development_programmes8.Percentage_of_utilisation, Year: @rural_development_programmes8.Year } }
    end

    assert_redirected_to rural_development_programmes8_url(RuralDevelopmentProgrammes8.last)
  end

  test "should show rural_development_programmes8" do
    get rural_development_programmes8_url(@rural_development_programmes8)
    assert_response :success
  end

  test "should get edit" do
    get edit_rural_development_programmes8_url(@rural_development_programmes8)
    assert_response :success
  end

  test "should update rural_development_programmes8" do
    patch rural_development_programmes8_url(@rural_development_programmes8), params: { rural_development_programmes8: { Districts: @rural_development_programmes8.Districts, Fund_available: @rural_development_programmes8.Fund_available, Fund_utilised: @rural_development_programmes8.Fund_utilised, Percentage_of_utilisation: @rural_development_programmes8.Percentage_of_utilisation, Year: @rural_development_programmes8.Year } }
    assert_redirected_to rural_development_programmes8_url(@rural_development_programmes8)
  end

  test "should destroy rural_development_programmes8" do
    assert_difference('RuralDevelopmentProgrammes8.count', -1) do
      delete rural_development_programmes8_url(@rural_development_programmes8)
    end

    assert_redirected_to rural_development_programmes8s_url
  end
end
