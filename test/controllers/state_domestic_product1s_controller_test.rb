require 'test_helper'

class StateDomesticProduct1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state_domestic_product1 = state_domestic_product1s(:one)
  end

  test "should get index" do
    get state_domestic_product1s_url
    assert_response :success
  end

  test "should get new" do
    get new_state_domestic_product1_url
    assert_response :success
  end

  test "should create state_domestic_product1" do
    assert_difference('StateDomesticProduct1.count') do
      post state_domestic_product1s_url, params: { state_domestic_product1: { 2011-12_to_2015-16: @state_domestic_product1.2011-12_to_2015-16, 2015-16: @state_domestic_product1.2015-16, 2016-17: @state_domestic_product1.2016-17, Reference: @state_domestic_product1.Reference, Sector: @state_domestic_product1.Sector } }
    end

    assert_redirected_to state_domestic_product1_url(StateDomesticProduct1.last)
  end

  test "should show state_domestic_product1" do
    get state_domestic_product1_url(@state_domestic_product1)
    assert_response :success
  end

  test "should get edit" do
    get edit_state_domestic_product1_url(@state_domestic_product1)
    assert_response :success
  end

  test "should update state_domestic_product1" do
    patch state_domestic_product1_url(@state_domestic_product1), params: { state_domestic_product1: { 2011-12_to_2015-16: @state_domestic_product1.2011-12_to_2015-16, 2015-16: @state_domestic_product1.2015-16, 2016-17: @state_domestic_product1.2016-17, Reference: @state_domestic_product1.Reference, Sector: @state_domestic_product1.Sector } }
    assert_redirected_to state_domestic_product1_url(@state_domestic_product1)
  end

  test "should destroy state_domestic_product1" do
    assert_difference('StateDomesticProduct1.count', -1) do
      delete state_domestic_product1_url(@state_domestic_product1)
    end

    assert_redirected_to state_domestic_product1s_url
  end
end
