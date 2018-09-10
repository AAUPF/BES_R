require 'test_helper'

class DeficitManagement4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deficit_management4 = deficit_management4s(:one)
  end

  test "should get index" do
    get deficit_management4s_url
    assert_response :success
  end

  test "should get new" do
    get new_deficit_management4_url
    assert_response :success
  end

  test "should create deficit_management4" do
    assert_difference('DeficitManagement4.count') do
      post deficit_management4s_url, params: { deficit_management4: { 2012-13: @deficit_management4.2012-13, 2013-14: @deficit_management4.2013-14, 2014-15: @deficit_management4.2014-15, 2015-16: @deficit_management4.2015-16, 2016-17: @deficit_management4.2016-17, 2017-18_BE: @deficit_management4.2017-18_BE, Indicator: @deficit_management4.Indicator, Sector: @deficit_management4.Sector } }
    end

    assert_redirected_to deficit_management4_url(DeficitManagement4.last)
  end

  test "should show deficit_management4" do
    get deficit_management4_url(@deficit_management4)
    assert_response :success
  end

  test "should get edit" do
    get edit_deficit_management4_url(@deficit_management4)
    assert_response :success
  end

  test "should update deficit_management4" do
    patch deficit_management4_url(@deficit_management4), params: { deficit_management4: { 2012-13: @deficit_management4.2012-13, 2013-14: @deficit_management4.2013-14, 2014-15: @deficit_management4.2014-15, 2015-16: @deficit_management4.2015-16, 2016-17: @deficit_management4.2016-17, 2017-18_BE: @deficit_management4.2017-18_BE, Indicator: @deficit_management4.Indicator, Sector: @deficit_management4.Sector } }
    assert_redirected_to deficit_management4_url(@deficit_management4)
  end

  test "should destroy deficit_management4" do
    assert_difference('DeficitManagement4.count', -1) do
      delete deficit_management4_url(@deficit_management4)
    end

    assert_redirected_to deficit_management4s_url
  end
end
