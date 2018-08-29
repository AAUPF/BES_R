require 'test_helper'

class StateDomesticProduct8sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state_domestic_product8 = state_domestic_product8s(:one)
  end

  test "should get index" do
    get state_domestic_product8s_url
    assert_response :success
  end

  test "should get new" do
    get new_state_domestic_product8_url
    assert_response :success
  end

  test "should create state_domestic_product8" do
    assert_difference('StateDomesticProduct8.count') do
      post state_domestic_product8s_url, params: { state_domestic_product8: { 2011-12: @state_domestic_product8.2011-12, 2011-16: @state_domestic_product8.2011-16, 2012-13: @state_domestic_product8.2012-13, 2013-14: @state_domestic_product8.2013-14, 2014-15: @state_domestic_product8.2014-15, 2015-16: @state_domestic_product8.2015-16, 2016-17: @state_domestic_product8.2016-17, Sector: @state_domestic_product8.Sector } }
    end

    assert_redirected_to state_domestic_product8_url(StateDomesticProduct8.last)
  end

  test "should show state_domestic_product8" do
    get state_domestic_product8_url(@state_domestic_product8)
    assert_response :success
  end

  test "should get edit" do
    get edit_state_domestic_product8_url(@state_domestic_product8)
    assert_response :success
  end

  test "should update state_domestic_product8" do
    patch state_domestic_product8_url(@state_domestic_product8), params: { state_domestic_product8: { 2011-12: @state_domestic_product8.2011-12, 2011-16: @state_domestic_product8.2011-16, 2012-13: @state_domestic_product8.2012-13, 2013-14: @state_domestic_product8.2013-14, 2014-15: @state_domestic_product8.2014-15, 2015-16: @state_domestic_product8.2015-16, 2016-17: @state_domestic_product8.2016-17, Sector: @state_domestic_product8.Sector } }
    assert_redirected_to state_domestic_product8_url(@state_domestic_product8)
  end

  test "should destroy state_domestic_product8" do
    assert_difference('StateDomesticProduct8.count', -1) do
      delete state_domestic_product8_url(@state_domestic_product8)
    end

    assert_redirected_to state_domestic_product8s_url
  end
end
