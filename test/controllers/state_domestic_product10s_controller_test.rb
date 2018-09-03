require 'test_helper'

class StateDomesticProduct10sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state_domestic_product10 = state_domestic_product10s(:one)
  end

  test "should get index" do
    get state_domestic_product10s_url
    assert_response :success
  end

  test "should get new" do
    get new_state_domestic_product10_url
    assert_response :success
  end

  test "should create state_domestic_product10" do
    assert_difference('StateDomesticProduct10.count') do
      post state_domestic_product10s_url, params: { state_domestic_product10: { Diesel: @state_domestic_product10.Diesel, Districts: @state_domestic_product10.Districts, LPG: @state_domestic_product10.LPG, Percentage_Share_of_Diesel: @state_domestic_product10.Percentage_Share_of_Diesel, Percentage_Share_of_LPG: @state_domestic_product10.Percentage_Share_of_LPG, Percentage_Share_of_Petrol: @state_domestic_product10.Percentage_Share_of_Petrol, Petrol: @state_domestic_product10.Petrol, Share_of_Population: @state_domestic_product10.Share_of_Population, Year: @state_domestic_product10.Year } }
    end

    assert_redirected_to state_domestic_product10_url(StateDomesticProduct10.last)
  end

  test "should show state_domestic_product10" do
    get state_domestic_product10_url(@state_domestic_product10)
    assert_response :success
  end

  test "should get edit" do
    get edit_state_domestic_product10_url(@state_domestic_product10)
    assert_response :success
  end

  test "should update state_domestic_product10" do
    patch state_domestic_product10_url(@state_domestic_product10), params: { state_domestic_product10: { Diesel: @state_domestic_product10.Diesel, Districts: @state_domestic_product10.Districts, LPG: @state_domestic_product10.LPG, Percentage_Share_of_Diesel: @state_domestic_product10.Percentage_Share_of_Diesel, Percentage_Share_of_LPG: @state_domestic_product10.Percentage_Share_of_LPG, Percentage_Share_of_Petrol: @state_domestic_product10.Percentage_Share_of_Petrol, Petrol: @state_domestic_product10.Petrol, Share_of_Population: @state_domestic_product10.Share_of_Population, Year: @state_domestic_product10.Year } }
    assert_redirected_to state_domestic_product10_url(@state_domestic_product10)
  end

  test "should destroy state_domestic_product10" do
    assert_difference('StateDomesticProduct10.count', -1) do
      delete state_domestic_product10_url(@state_domestic_product10)
    end

    assert_redirected_to state_domestic_product10s_url
  end
end
