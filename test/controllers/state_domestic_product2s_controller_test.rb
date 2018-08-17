require 'test_helper'

class StateDomesticProduct2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state_domestic_product2 = state_domestic_product2s(:one)
  end

  test "should get index" do
    get state_domestic_product2s_url
    assert_response :success
  end

  test "should get new" do
    get new_state_domestic_product2_url
    assert_response :success
  end

  test "should create state_domestic_product2" do
    assert_difference('StateDomesticProduct2.count') do
      post state_domestic_product2s_url, params: { state_domestic_product2: { Per_Capita_Income: @state_domestic_product2.Per_Capita_Income, State: @state_domestic_product2.State, Year: @state_domestic_product2.Year } }
    end

    assert_redirected_to state_domestic_product2_url(StateDomesticProduct2.last)
  end

  test "should show state_domestic_product2" do
    get state_domestic_product2_url(@state_domestic_product2)
    assert_response :success
  end

  test "should get edit" do
    get edit_state_domestic_product2_url(@state_domestic_product2)
    assert_response :success
  end

  test "should update state_domestic_product2" do
    patch state_domestic_product2_url(@state_domestic_product2), params: { state_domestic_product2: { Per_Capita_Income: @state_domestic_product2.Per_Capita_Income, State: @state_domestic_product2.State, Year: @state_domestic_product2.Year } }
    assert_redirected_to state_domestic_product2_url(@state_domestic_product2)
  end

  test "should destroy state_domestic_product2" do
    assert_difference('StateDomesticProduct2.count', -1) do
      delete state_domestic_product2_url(@state_domestic_product2)
    end

    assert_redirected_to state_domestic_product2s_url
  end
end
