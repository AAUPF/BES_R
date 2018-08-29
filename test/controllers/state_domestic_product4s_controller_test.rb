require 'test_helper'

class StateDomesticProduct4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state_domestic_product4 = state_domestic_product4s(:one)
  end

  test "should get index" do
    get state_domestic_product4s_url
    assert_response :success
  end

  test "should get new" do
    get new_state_domestic_product4_url
    assert_response :success
  end

  test "should create state_domestic_product4" do
    assert_difference('StateDomesticProduct4.count') do
      post state_domestic_product4s_url, params: { state_domestic_product4: { 2011-12: @state_domestic_product4.2011-12, 2011-16: @state_domestic_product4.2011-16, 2012-13: @state_domestic_product4.2012-13, 2013-14: @state_domestic_product4.2013-14, 2014-15: @state_domestic_product4.2014-15, 2015-16: @state_domestic_product4.2015-16, 2016-17: @state_domestic_product4.2016-17, Sector: @state_domestic_product4.Sector } }
    end

    assert_redirected_to state_domestic_product4_url(StateDomesticProduct4.last)
  end

  test "should show state_domestic_product4" do
    get state_domestic_product4_url(@state_domestic_product4)
    assert_response :success
  end

  test "should get edit" do
    get edit_state_domestic_product4_url(@state_domestic_product4)
    assert_response :success
  end

  test "should update state_domestic_product4" do
    patch state_domestic_product4_url(@state_domestic_product4), params: { state_domestic_product4: { 2011-12: @state_domestic_product4.2011-12, 2011-16: @state_domestic_product4.2011-16, 2012-13: @state_domestic_product4.2012-13, 2013-14: @state_domestic_product4.2013-14, 2014-15: @state_domestic_product4.2014-15, 2015-16: @state_domestic_product4.2015-16, 2016-17: @state_domestic_product4.2016-17, Sector: @state_domestic_product4.Sector } }
    assert_redirected_to state_domestic_product4_url(@state_domestic_product4)
  end

  test "should destroy state_domestic_product4" do
    assert_difference('StateDomesticProduct4.count', -1) do
      delete state_domestic_product4_url(@state_domestic_product4)
    end

    assert_redirected_to state_domestic_product4s_url
  end
end
