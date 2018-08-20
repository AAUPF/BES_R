require 'test_helper'

class DeficitManagement1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deficit_management1 = deficit_management1s(:one)
  end

  test "should get index" do
    get deficit_management1s_url
    assert_response :success
  end

  test "should get new" do
    get new_deficit_management1_url
    assert_response :success
  end

  test "should create deficit_management1" do
    assert_difference('DeficitManagement1.count') do
      post deficit_management1s_url, params: { deficit_management1: { Conventional_Deficit_Surplus: @deficit_management1.Conventional_Deficit_Surplus, Revenue_Deficit_Surplus: @deficit_management1.Revenue_Deficit_Surplus, State: @deficit_management1.State, Year: @deficit_management1.Year } }
    end

    assert_redirected_to deficit_management1_url(DeficitManagement1.last)
  end

  test "should show deficit_management1" do
    get deficit_management1_url(@deficit_management1)
    assert_response :success
  end

  test "should get edit" do
    get edit_deficit_management1_url(@deficit_management1)
    assert_response :success
  end

  test "should update deficit_management1" do
    patch deficit_management1_url(@deficit_management1), params: { deficit_management1: { Conventional_Deficit_Surplus: @deficit_management1.Conventional_Deficit_Surplus, Revenue_Deficit_Surplus: @deficit_management1.Revenue_Deficit_Surplus, State: @deficit_management1.State, Year: @deficit_management1.Year } }
    assert_redirected_to deficit_management1_url(@deficit_management1)
  end

  test "should destroy deficit_management1" do
    assert_difference('DeficitManagement1.count', -1) do
      delete deficit_management1_url(@deficit_management1)
    end

    assert_redirected_to deficit_management1s_url
  end
end
