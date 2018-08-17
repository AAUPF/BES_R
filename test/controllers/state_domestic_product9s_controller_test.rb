require 'test_helper'

class StateDomesticProduct9sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state_domestic_product9 = state_domestic_product9s(:one)
  end

  test "should get index" do
    get state_domestic_product9s_url
    assert_response :success
  end

  test "should get new" do
    get new_state_domestic_product9_url
    assert_response :success
  end

  test "should create state_domestic_product9" do
    assert_difference('StateDomesticProduct9.count') do
      post state_domestic_product9s_url, params: { state_domestic_product9: { Districts: @state_domestic_product9.Districts, Per_Capita_GDP: @state_domestic_product9.Per_Capita_GDP, Year: @state_domestic_product9.Year } }
    end

    assert_redirected_to state_domestic_product9_url(StateDomesticProduct9.last)
  end

  test "should show state_domestic_product9" do
    get state_domestic_product9_url(@state_domestic_product9)
    assert_response :success
  end

  test "should get edit" do
    get edit_state_domestic_product9_url(@state_domestic_product9)
    assert_response :success
  end

  test "should update state_domestic_product9" do
    patch state_domestic_product9_url(@state_domestic_product9), params: { state_domestic_product9: { Districts: @state_domestic_product9.Districts, Per_Capita_GDP: @state_domestic_product9.Per_Capita_GDP, Year: @state_domestic_product9.Year } }
    assert_redirected_to state_domestic_product9_url(@state_domestic_product9)
  end

  test "should destroy state_domestic_product9" do
    assert_difference('StateDomesticProduct9.count', -1) do
      delete state_domestic_product9_url(@state_domestic_product9)
    end

    assert_redirected_to state_domestic_product9s_url
  end
end
