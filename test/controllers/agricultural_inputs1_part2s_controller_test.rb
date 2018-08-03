require 'test_helper'

class AgriculturalInputs1Part2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agricultural_inputs1_part2 = agricultural_inputs1_part2s(:one)
  end

  test "should get index" do
    get agricultural_inputs1_part2s_url
    assert_response :success
  end

  test "should get new" do
    get new_agricultural_inputs1_part2_url
    assert_response :success
  end

  test "should create agricultural_inputs1_part2" do
    assert_difference('AgriculturalInputs1Part2.count') do
      post agricultural_inputs1_part2s_url, params: { agricultural_inputs1_part2: { Arhar: @agricultural_inputs1_part2.Arhar, Crops: @agricultural_inputs1_part2.Crops, Gram: @agricultural_inputs1_part2.Gram, Maize: @agricultural_inputs1_part2.Maize, Masoor: @agricultural_inputs1_part2.Masoor, Pea: @agricultural_inputs1_part2.Pea, Rapeseed_Mustard: @agricultural_inputs1_part2.Rapeseed_Mustard, Type_Crops: @agricultural_inputs1_part2.Type_Crops, Wheat: @agricultural_inputs1_part2.Wheat, Year: @agricultural_inputs1_part2.Year } }
    end

    assert_redirected_to agricultural_inputs1_part2_url(AgriculturalInputs1Part2.last)
  end

  test "should show agricultural_inputs1_part2" do
    get agricultural_inputs1_part2_url(@agricultural_inputs1_part2)
    assert_response :success
  end

  test "should get edit" do
    get edit_agricultural_inputs1_part2_url(@agricultural_inputs1_part2)
    assert_response :success
  end

  test "should update agricultural_inputs1_part2" do
    patch agricultural_inputs1_part2_url(@agricultural_inputs1_part2), params: { agricultural_inputs1_part2: { Arhar: @agricultural_inputs1_part2.Arhar, Crops: @agricultural_inputs1_part2.Crops, Gram: @agricultural_inputs1_part2.Gram, Maize: @agricultural_inputs1_part2.Maize, Masoor: @agricultural_inputs1_part2.Masoor, Pea: @agricultural_inputs1_part2.Pea, Rapeseed_Mustard: @agricultural_inputs1_part2.Rapeseed_Mustard, Type_Crops: @agricultural_inputs1_part2.Type_Crops, Wheat: @agricultural_inputs1_part2.Wheat, Year: @agricultural_inputs1_part2.Year } }
    assert_redirected_to agricultural_inputs1_part2_url(@agricultural_inputs1_part2)
  end

  test "should destroy agricultural_inputs1_part2" do
    assert_difference('AgriculturalInputs1Part2.count', -1) do
      delete agricultural_inputs1_part2_url(@agricultural_inputs1_part2)
    end

    assert_redirected_to agricultural_inputs1_part2s_url
  end
end
