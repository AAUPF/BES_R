require 'test_helper'

class RuralDevelopmentProgrammes3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rural_development_programmes3 = rural_development_programmes3s(:one)
  end

  test "should get index" do
    get rural_development_programmes3s_url
    assert_response :success
  end

  test "should get new" do
    get new_rural_development_programmes3_url
    assert_response :success
  end

  test "should create rural_development_programmes3" do
    assert_difference('RuralDevelopmentProgrammes3.count') do
      post rural_development_programmes3s_url, params: { rural_development_programmes3: { 2014-15: @rural_development_programmes3.2014-15, 2015-16: @rural_development_programmes3.2015-16, 2016-17: @rural_development_programmes3.2016-17, Indicator: @rural_development_programmes3.Indicator, Sector: @rural_development_programmes3.Sector } }
    end

    assert_redirected_to rural_development_programmes3_url(RuralDevelopmentProgrammes3.last)
  end

  test "should show rural_development_programmes3" do
    get rural_development_programmes3_url(@rural_development_programmes3)
    assert_response :success
  end

  test "should get edit" do
    get edit_rural_development_programmes3_url(@rural_development_programmes3)
    assert_response :success
  end

  test "should update rural_development_programmes3" do
    patch rural_development_programmes3_url(@rural_development_programmes3), params: { rural_development_programmes3: { 2014-15: @rural_development_programmes3.2014-15, 2015-16: @rural_development_programmes3.2015-16, 2016-17: @rural_development_programmes3.2016-17, Indicator: @rural_development_programmes3.Indicator, Sector: @rural_development_programmes3.Sector } }
    assert_redirected_to rural_development_programmes3_url(@rural_development_programmes3)
  end

  test "should destroy rural_development_programmes3" do
    assert_difference('RuralDevelopmentProgrammes3.count', -1) do
      delete rural_development_programmes3_url(@rural_development_programmes3)
    end

    assert_redirected_to rural_development_programmes3s_url
  end
end
