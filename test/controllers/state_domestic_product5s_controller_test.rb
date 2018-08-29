require 'test_helper'

class StateDomesticProduct5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state_domestic_product5 = state_domestic_product5s(:one)
  end

  test "should get index" do
    get state_domestic_product5s_url
    assert_response :success
  end

  test "should get new" do
    get new_state_domestic_product5_url
    assert_response :success
  end

  test "should create state_domestic_product5" do
    assert_difference('StateDomesticProduct5.count') do
      post state_domestic_product5s_url, params: { state_domestic_product5: { 2011-12: @state_domestic_product5.2011-12, 2011-16: @state_domestic_product5.2011-16, 2012-13: @state_domestic_product5.2012-13, 2013-14: @state_domestic_product5.2013-14, 2014-15: @state_domestic_product5.2014-15, 2015-16: @state_domestic_product5.2015-16, 2016-17: @state_domestic_product5.2016-17, Sector: @state_domestic_product5.Sector } }
    end

    assert_redirected_to state_domestic_product5_url(StateDomesticProduct5.last)
  end

  test "should show state_domestic_product5" do
    get state_domestic_product5_url(@state_domestic_product5)
    assert_response :success
  end

  test "should get edit" do
    get edit_state_domestic_product5_url(@state_domestic_product5)
    assert_response :success
  end

  test "should update state_domestic_product5" do
    patch state_domestic_product5_url(@state_domestic_product5), params: { state_domestic_product5: { 2011-12: @state_domestic_product5.2011-12, 2011-16: @state_domestic_product5.2011-16, 2012-13: @state_domestic_product5.2012-13, 2013-14: @state_domestic_product5.2013-14, 2014-15: @state_domestic_product5.2014-15, 2015-16: @state_domestic_product5.2015-16, 2016-17: @state_domestic_product5.2016-17, Sector: @state_domestic_product5.Sector } }
    assert_redirected_to state_domestic_product5_url(@state_domestic_product5)
  end

  test "should destroy state_domestic_product5" do
    assert_difference('StateDomesticProduct5.count', -1) do
      delete state_domestic_product5_url(@state_domestic_product5)
    end

    assert_redirected_to state_domestic_product5s_url
  end
end
