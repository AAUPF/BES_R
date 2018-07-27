require 'test_helper'

class AgriculturalInputs5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agricultural_inputs5 = agricultural_inputs5s(:one)
  end

  test "should get index" do
    get agricultural_inputs5s_url
    assert_response :success
  end

  test "should get new" do
    get new_agricultural_inputs5_url
    assert_response :success
  end

  test "should create agricultural_inputs5" do
    assert_difference('AgriculturalInputs5.count') do
      post agricultural_inputs5s_url, params: { agricultural_inputs5: { Achievement_Financial: @agricultural_inputs5.Achievement_Financial, Achievement_Financial_Colour: @agricultural_inputs5.Achievement_Financial_Colour, Achievement_Physical: @agricultural_inputs5.Achievement_Physical, Achievement_Physical_Colour: @agricultural_inputs5.Achievement_Physical_Colour, Districts: @agricultural_inputs5.Districts, Target_Financial: @agricultural_inputs5.Target_Financial, Target_Financial_Colour: @agricultural_inputs5.Target_Financial_Colour, Target_Physical: @agricultural_inputs5.Target_Physical, Target_Physical_Colour: @agricultural_inputs5.Target_Physical_Colour } }
    end

    assert_redirected_to agricultural_inputs5_url(AgriculturalInputs5.last)
  end

  test "should show agricultural_inputs5" do
    get agricultural_inputs5_url(@agricultural_inputs5)
    assert_response :success
  end

  test "should get edit" do
    get edit_agricultural_inputs5_url(@agricultural_inputs5)
    assert_response :success
  end

  test "should update agricultural_inputs5" do
    patch agricultural_inputs5_url(@agricultural_inputs5), params: { agricultural_inputs5: { Achievement_Financial: @agricultural_inputs5.Achievement_Financial, Achievement_Financial_Colour: @agricultural_inputs5.Achievement_Financial_Colour, Achievement_Physical: @agricultural_inputs5.Achievement_Physical, Achievement_Physical_Colour: @agricultural_inputs5.Achievement_Physical_Colour, Districts: @agricultural_inputs5.Districts, Target_Financial: @agricultural_inputs5.Target_Financial, Target_Financial_Colour: @agricultural_inputs5.Target_Financial_Colour, Target_Physical: @agricultural_inputs5.Target_Physical, Target_Physical_Colour: @agricultural_inputs5.Target_Physical_Colour } }
    assert_redirected_to agricultural_inputs5_url(@agricultural_inputs5)
  end

  test "should destroy agricultural_inputs5" do
    assert_difference('AgriculturalInputs5.count', -1) do
      delete agricultural_inputs5_url(@agricultural_inputs5)
    end

    assert_redirected_to agricultural_inputs5s_url
  end
end
