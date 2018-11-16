require 'test_helper'

class RuralDevelopmentProgrammes2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rural_development_programmes2 = rural_development_programmes2s(:one)
  end

  test "should get index" do
    get rural_development_programmes2s_url
    assert_response :success
  end

  test "should get new" do
    get new_rural_development_programmes2_url
    assert_response :success
  end

  test "should create rural_development_programmes2" do
    assert_difference('RuralDevelopmentProgrammes2.count') do
      post rural_development_programmes2s_url, params: { rural_development_programmes2: { 2011-12: @rural_development_programmes2.2011-12, 2012-13: @rural_development_programmes2.2012-13, 2013-14: @rural_development_programmes2.2013-14, 2014-15: @rural_development_programmes2.2014-15, 2015-16: @rural_development_programmes2.2015-16, 2016-17: @rural_development_programmes2.2016-17, Performance: @rural_development_programmes2.Performance } }
    end

    assert_redirected_to rural_development_programmes2_url(RuralDevelopmentProgrammes2.last)
  end

  test "should show rural_development_programmes2" do
    get rural_development_programmes2_url(@rural_development_programmes2)
    assert_response :success
  end

  test "should get edit" do
    get edit_rural_development_programmes2_url(@rural_development_programmes2)
    assert_response :success
  end

  test "should update rural_development_programmes2" do
    patch rural_development_programmes2_url(@rural_development_programmes2), params: { rural_development_programmes2: { 2011-12: @rural_development_programmes2.2011-12, 2012-13: @rural_development_programmes2.2012-13, 2013-14: @rural_development_programmes2.2013-14, 2014-15: @rural_development_programmes2.2014-15, 2015-16: @rural_development_programmes2.2015-16, 2016-17: @rural_development_programmes2.2016-17, Performance: @rural_development_programmes2.Performance } }
    assert_redirected_to rural_development_programmes2_url(@rural_development_programmes2)
  end

  test "should destroy rural_development_programmes2" do
    assert_difference('RuralDevelopmentProgrammes2.count', -1) do
      delete rural_development_programmes2_url(@rural_development_programmes2)
    end

    assert_redirected_to rural_development_programmes2s_url
  end
end
