require 'test_helper'

class StateDomesticProduct6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state_domestic_product6 = state_domestic_product6s(:one)
  end

  test "should get index" do
    get state_domestic_product6s_url
    assert_response :success
  end

  test "should get new" do
    get new_state_domestic_product6_url
    assert_response :success
  end

  test "should create state_domestic_product6" do
    assert_difference('StateDomesticProduct6.count') do
      post state_domestic_product6s_url, params: { state_domestic_product6: { 2011-12: @state_domestic_product6.2011-12, 2011-16: @state_domestic_product6.2011-16, 2012-13: @state_domestic_product6.2012-13, 2013-14: @state_domestic_product6.2013-14, 2014-15: @state_domestic_product6.2014-15, 2015-16: @state_domestic_product6.2015-16, 2016-17: @state_domestic_product6.2016-17, Sector: @state_domestic_product6.Sector } }
    end

    assert_redirected_to state_domestic_product6_url(StateDomesticProduct6.last)
  end

  test "should show state_domestic_product6" do
    get state_domestic_product6_url(@state_domestic_product6)
    assert_response :success
  end

  test "should get edit" do
    get edit_state_domestic_product6_url(@state_domestic_product6)
    assert_response :success
  end

  test "should update state_domestic_product6" do
    patch state_domestic_product6_url(@state_domestic_product6), params: { state_domestic_product6: { 2011-12: @state_domestic_product6.2011-12, 2011-16: @state_domestic_product6.2011-16, 2012-13: @state_domestic_product6.2012-13, 2013-14: @state_domestic_product6.2013-14, 2014-15: @state_domestic_product6.2014-15, 2015-16: @state_domestic_product6.2015-16, 2016-17: @state_domestic_product6.2016-17, Sector: @state_domestic_product6.Sector } }
    assert_redirected_to state_domestic_product6_url(@state_domestic_product6)
  end

  test "should destroy state_domestic_product6" do
    assert_difference('StateDomesticProduct6.count', -1) do
      delete state_domestic_product6_url(@state_domestic_product6)
    end

    assert_redirected_to state_domestic_product6s_url
  end
end
