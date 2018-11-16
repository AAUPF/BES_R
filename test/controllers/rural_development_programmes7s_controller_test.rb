require 'test_helper'

class RuralDevelopmentProgrammes7sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rural_development_programmes7 = rural_development_programmes7s(:one)
  end

  test "should get index" do
    get rural_development_programmes7s_url
    assert_response :success
  end

  test "should get new" do
    get new_rural_development_programmes7_url
    assert_response :success
  end

  test "should create rural_development_programmes7" do
    assert_difference('RuralDevelopmentProgrammes7.count') do
      post rural_development_programmes7s_url, params: { rural_development_programmes7: { 2014-15: @rural_development_programmes7.2014-15, 2015-16: @rural_development_programmes7.2015-16, 2016-17: @rural_development_programmes7.2016-17, Indicator: @rural_development_programmes7.Indicator, Sector: @rural_development_programmes7.Sector } }
    end

    assert_redirected_to rural_development_programmes7_url(RuralDevelopmentProgrammes7.last)
  end

  test "should show rural_development_programmes7" do
    get rural_development_programmes7_url(@rural_development_programmes7)
    assert_response :success
  end

  test "should get edit" do
    get edit_rural_development_programmes7_url(@rural_development_programmes7)
    assert_response :success
  end

  test "should update rural_development_programmes7" do
    patch rural_development_programmes7_url(@rural_development_programmes7), params: { rural_development_programmes7: { 2014-15: @rural_development_programmes7.2014-15, 2015-16: @rural_development_programmes7.2015-16, 2016-17: @rural_development_programmes7.2016-17, Indicator: @rural_development_programmes7.Indicator, Sector: @rural_development_programmes7.Sector } }
    assert_redirected_to rural_development_programmes7_url(@rural_development_programmes7)
  end

  test "should destroy rural_development_programmes7" do
    assert_difference('RuralDevelopmentProgrammes7.count', -1) do
      delete rural_development_programmes7_url(@rural_development_programmes7)
    end

    assert_redirected_to rural_development_programmes7s_url
  end
end
