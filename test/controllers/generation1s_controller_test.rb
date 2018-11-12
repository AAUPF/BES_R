require 'test_helper'

class Generation1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @generation1 = generation1s(:one)
  end

  test "should get index" do
    get generation1s_url
    assert_response :success
  end

  test "should get new" do
    get new_generation1_url
    assert_response :success
  end

  test "should create generation1" do
    assert_difference('Generation1.count') do
      post generation1s_url, params: { generation1: { Grand_Total: @generation1.Grand_Total, Hydro_Renewable: @generation1.Hydro_Renewable, Nuclear: @generation1.Nuclear, RES_MNRE: @generation1.RES_MNRE, Sector: @generation1.Sector, Thermal_Coal: @generation1.Thermal_Coal, Thermal_Diesel: @generation1.Thermal_Diesel, Thermal_Gas: @generation1.Thermal_Gas, Thermal_Total: @generation1.Thermal_Total } }
    end

    assert_redirected_to generation1_url(Generation1.last)
  end

  test "should show generation1" do
    get generation1_url(@generation1)
    assert_response :success
  end

  test "should get edit" do
    get edit_generation1_url(@generation1)
    assert_response :success
  end

  test "should update generation1" do
    patch generation1_url(@generation1), params: { generation1: { Grand_Total: @generation1.Grand_Total, Hydro_Renewable: @generation1.Hydro_Renewable, Nuclear: @generation1.Nuclear, RES_MNRE: @generation1.RES_MNRE, Sector: @generation1.Sector, Thermal_Coal: @generation1.Thermal_Coal, Thermal_Diesel: @generation1.Thermal_Diesel, Thermal_Gas: @generation1.Thermal_Gas, Thermal_Total: @generation1.Thermal_Total } }
    assert_redirected_to generation1_url(@generation1)
  end

  test "should destroy generation1" do
    assert_difference('Generation1.count', -1) do
      delete generation1_url(@generation1)
    end

    assert_redirected_to generation1s_url
  end
end
