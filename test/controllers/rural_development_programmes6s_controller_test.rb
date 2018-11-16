require 'test_helper'

class RuralDevelopmentProgrammes6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rural_development_programmes6 = rural_development_programmes6s(:one)
  end

  test "should get index" do
    get rural_development_programmes6s_url
    assert_response :success
  end

  test "should get new" do
    get new_rural_development_programmes6_url
    assert_response :success
  end

  test "should create rural_development_programmes6" do
    assert_difference('RuralDevelopmentProgrammes6.count') do
      post rural_development_programmes6s_url, params: { rural_development_programmes6: { Allotment: @rural_development_programmes6.Allotment, Crop: @rural_development_programmes6.Crop, Lifting: @rural_development_programmes6.Lifting, Lifting_Percentage: @rural_development_programmes6.Lifting_Percentage, Year: @rural_development_programmes6.Year } }
    end

    assert_redirected_to rural_development_programmes6_url(RuralDevelopmentProgrammes6.last)
  end

  test "should show rural_development_programmes6" do
    get rural_development_programmes6_url(@rural_development_programmes6)
    assert_response :success
  end

  test "should get edit" do
    get edit_rural_development_programmes6_url(@rural_development_programmes6)
    assert_response :success
  end

  test "should update rural_development_programmes6" do
    patch rural_development_programmes6_url(@rural_development_programmes6), params: { rural_development_programmes6: { Allotment: @rural_development_programmes6.Allotment, Crop: @rural_development_programmes6.Crop, Lifting: @rural_development_programmes6.Lifting, Lifting_Percentage: @rural_development_programmes6.Lifting_Percentage, Year: @rural_development_programmes6.Year } }
    assert_redirected_to rural_development_programmes6_url(@rural_development_programmes6)
  end

  test "should destroy rural_development_programmes6" do
    assert_difference('RuralDevelopmentProgrammes6.count', -1) do
      delete rural_development_programmes6_url(@rural_development_programmes6)
    end

    assert_redirected_to rural_development_programmes6s_url
  end
end
