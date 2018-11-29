require 'test_helper'

class SectoralShare7sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sectoral_share7 = sectoral_share7s(:one)
  end

  test "should get index" do
    get sectoral_share7s_url
    assert_response :success
  end

  test "should get new" do
    get new_sectoral_share7_url
    assert_response :success
  end

  test "should create sectoral_share7" do
    assert_difference('SectoralShare7.count') do
      post sectoral_share7s_url, params: { sectoral_share7: { 2013-14: @sectoral_share7.2013-14, 2014-15: @sectoral_share7.2014-15, 2015-16: @sectoral_share7.2015-16, Indicator: @sectoral_share7.Indicator, State: @sectoral_share7.State } }
    end

    assert_redirected_to sectoral_share7_url(SectoralShare7.last)
  end

  test "should show sectoral_share7" do
    get sectoral_share7_url(@sectoral_share7)
    assert_response :success
  end

  test "should get edit" do
    get edit_sectoral_share7_url(@sectoral_share7)
    assert_response :success
  end

  test "should update sectoral_share7" do
    patch sectoral_share7_url(@sectoral_share7), params: { sectoral_share7: { 2013-14: @sectoral_share7.2013-14, 2014-15: @sectoral_share7.2014-15, 2015-16: @sectoral_share7.2015-16, Indicator: @sectoral_share7.Indicator, State: @sectoral_share7.State } }
    assert_redirected_to sectoral_share7_url(@sectoral_share7)
  end

  test "should destroy sectoral_share7" do
    assert_difference('SectoralShare7.count', -1) do
      delete sectoral_share7_url(@sectoral_share7)
    end

    assert_redirected_to sectoral_share7s_url
  end
end
