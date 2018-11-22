require 'test_helper'

class RuralDevelopmentProgrammes10sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rural_development_programmes10 = rural_development_programmes10s(:one)
  end

  test "should get index" do
    get rural_development_programmes10s_url
    assert_response :success
  end

  test "should get new" do
    get new_rural_development_programmes10_url
    assert_response :success
  end

  test "should create rural_development_programmes10" do
    assert_difference('RuralDevelopmentProgrammes10.count') do
      post rural_development_programmes10s_url, params: { rural_development_programmes10: { Allotment: @rural_development_programmes10.Allotment, Crops: @rural_development_programmes10.Crops, Districts: @rural_development_programmes10.Districts, Lifting: @rural_development_programmes10.Lifting, Lifting_Percentage: @rural_development_programmes10.Lifting_Percentage } }
    end

    assert_redirected_to rural_development_programmes10_url(RuralDevelopmentProgrammes10.last)
  end

  test "should show rural_development_programmes10" do
    get rural_development_programmes10_url(@rural_development_programmes10)
    assert_response :success
  end

  test "should get edit" do
    get edit_rural_development_programmes10_url(@rural_development_programmes10)
    assert_response :success
  end

  test "should update rural_development_programmes10" do
    patch rural_development_programmes10_url(@rural_development_programmes10), params: { rural_development_programmes10: { Allotment: @rural_development_programmes10.Allotment, Crops: @rural_development_programmes10.Crops, Districts: @rural_development_programmes10.Districts, Lifting: @rural_development_programmes10.Lifting, Lifting_Percentage: @rural_development_programmes10.Lifting_Percentage } }
    assert_redirected_to rural_development_programmes10_url(@rural_development_programmes10)
  end

  test "should destroy rural_development_programmes10" do
    assert_difference('RuralDevelopmentProgrammes10.count', -1) do
      delete rural_development_programmes10_url(@rural_development_programmes10)
    end

    assert_redirected_to rural_development_programmes10s_url
  end
end
