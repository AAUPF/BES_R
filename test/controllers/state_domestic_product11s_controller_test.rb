require 'test_helper'

class StateDomesticProduct11sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state_domestic_product11 = state_domestic_product11s(:one)
  end

  test "should get index" do
    get state_domestic_product11s_url
    assert_response :success
  end

  test "should get new" do
    get new_state_domestic_product11_url
    assert_response :success
  end

  test "should create state_domestic_product11" do
    assert_difference('StateDomesticProduct11.count') do
      post state_domestic_product11s_url, params: { state_domestic_product11: { Achievement: @state_domestic_product11.Achievement, Districts: @state_domestic_product11.Districts, Target: @state_domestic_product11.Target, Year: @state_domestic_product11.Year } }
    end

    assert_redirected_to state_domestic_product11_url(StateDomesticProduct11.last)
  end

  test "should show state_domestic_product11" do
    get state_domestic_product11_url(@state_domestic_product11)
    assert_response :success
  end

  test "should get edit" do
    get edit_state_domestic_product11_url(@state_domestic_product11)
    assert_response :success
  end

  test "should update state_domestic_product11" do
    patch state_domestic_product11_url(@state_domestic_product11), params: { state_domestic_product11: { Achievement: @state_domestic_product11.Achievement, Districts: @state_domestic_product11.Districts, Target: @state_domestic_product11.Target, Year: @state_domestic_product11.Year } }
    assert_redirected_to state_domestic_product11_url(@state_domestic_product11)
  end

  test "should destroy state_domestic_product11" do
    assert_difference('StateDomesticProduct11.count', -1) do
      delete state_domestic_product11_url(@state_domestic_product11)
    end

    assert_redirected_to state_domestic_product11s_url
  end
end
