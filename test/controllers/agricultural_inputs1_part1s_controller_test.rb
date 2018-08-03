require 'test_helper'

class AgriculturalInputs1Part1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agricultural_inputs1_part1 = agricultural_inputs1_part1s(:one)
  end

  test "should get index" do
    get agricultural_inputs1_part1s_url
    assert_response :success
  end

  test "should get new" do
    get new_agricultural_inputs1_part1_url
    assert_response :success
  end

  test "should create agricultural_inputs1_part1" do
    assert_difference('AgriculturalInputs1Part1.count') do
      post agricultural_inputs1_part1s_url, params: { agricultural_inputs1_part1: { Arhar: @agricultural_inputs1_part1.Arhar, Crops: @agricultural_inputs1_part1.Crops, Maize: @agricultural_inputs1_part1.Maize, Moong: @agricultural_inputs1_part1.Moong, Paddy: @agricultural_inputs1_part1.Paddy, Type_Crops: @agricultural_inputs1_part1.Type_Crops, Urad: @agricultural_inputs1_part1.Urad, Year: @agricultural_inputs1_part1.Year } }
    end

    assert_redirected_to agricultural_inputs1_part1_url(AgriculturalInputs1Part1.last)
  end

  test "should show agricultural_inputs1_part1" do
    get agricultural_inputs1_part1_url(@agricultural_inputs1_part1)
    assert_response :success
  end

  test "should get edit" do
    get edit_agricultural_inputs1_part1_url(@agricultural_inputs1_part1)
    assert_response :success
  end

  test "should update agricultural_inputs1_part1" do
    patch agricultural_inputs1_part1_url(@agricultural_inputs1_part1), params: { agricultural_inputs1_part1: { Arhar: @agricultural_inputs1_part1.Arhar, Crops: @agricultural_inputs1_part1.Crops, Maize: @agricultural_inputs1_part1.Maize, Moong: @agricultural_inputs1_part1.Moong, Paddy: @agricultural_inputs1_part1.Paddy, Type_Crops: @agricultural_inputs1_part1.Type_Crops, Urad: @agricultural_inputs1_part1.Urad, Year: @agricultural_inputs1_part1.Year } }
    assert_redirected_to agricultural_inputs1_part1_url(@agricultural_inputs1_part1)
  end

  test "should destroy agricultural_inputs1_part1" do
    assert_difference('AgriculturalInputs1Part1.count', -1) do
      delete agricultural_inputs1_part1_url(@agricultural_inputs1_part1)
    end

    assert_redirected_to agricultural_inputs1_part1s_url
  end
end
