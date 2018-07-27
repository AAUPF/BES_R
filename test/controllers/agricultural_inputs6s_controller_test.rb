require 'test_helper'

class AgriculturalInputs6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agricultural_inputs6 = agricultural_inputs6s(:one)
  end

  test "should get index" do
    get agricultural_inputs6s_url
    assert_response :success
  end

  test "should get new" do
    get new_agricultural_inputs6_url
    assert_response :success
  end

  test "should create agricultural_inputs6" do
    assert_difference('AgriculturalInputs6.count') do
      post agricultural_inputs6s_url, params: { agricultural_inputs6: { Achievement_Financial: @agricultural_inputs6.Achievement_Financial, Achievement_Financial_Colour: @agricultural_inputs6.Achievement_Financial_Colour, Achievement_Physical: @agricultural_inputs6.Achievement_Physical, Achievement_Physical_Colour: @agricultural_inputs6.Achievement_Physical_Colour, Districts: @agricultural_inputs6.Districts, Target_Financial: @agricultural_inputs6.Target_Financial, Target_Financial_Colour: @agricultural_inputs6.Target_Financial_Colour, Target_Physical: @agricultural_inputs6.Target_Physical, Target_Physical_Colour: @agricultural_inputs6.Target_Physical_Colour } }
    end

    assert_redirected_to agricultural_inputs6_url(AgriculturalInputs6.last)
  end

  test "should show agricultural_inputs6" do
    get agricultural_inputs6_url(@agricultural_inputs6)
    assert_response :success
  end

  test "should get edit" do
    get edit_agricultural_inputs6_url(@agricultural_inputs6)
    assert_response :success
  end

  test "should update agricultural_inputs6" do
    patch agricultural_inputs6_url(@agricultural_inputs6), params: { agricultural_inputs6: { Achievement_Financial: @agricultural_inputs6.Achievement_Financial, Achievement_Financial_Colour: @agricultural_inputs6.Achievement_Financial_Colour, Achievement_Physical: @agricultural_inputs6.Achievement_Physical, Achievement_Physical_Colour: @agricultural_inputs6.Achievement_Physical_Colour, Districts: @agricultural_inputs6.Districts, Target_Financial: @agricultural_inputs6.Target_Financial, Target_Financial_Colour: @agricultural_inputs6.Target_Financial_Colour, Target_Physical: @agricultural_inputs6.Target_Physical, Target_Physical_Colour: @agricultural_inputs6.Target_Physical_Colour } }
    assert_redirected_to agricultural_inputs6_url(@agricultural_inputs6)
  end

  test "should destroy agricultural_inputs6" do
    assert_difference('AgriculturalInputs6.count', -1) do
      delete agricultural_inputs6_url(@agricultural_inputs6)
    end

    assert_redirected_to agricultural_inputs6s_url
  end
end
