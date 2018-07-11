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
      post agricultural_inputs6s_url, params: { agricultural_inputs6: { Achievement_Financial: @agricultural_inputs6.Achievement_Financial, Achievement_Physical: @agricultural_inputs6.Achievement_Physical, Districts: @agricultural_inputs6.Districts, Target_Financial: @agricultural_inputs6.Target_Financial, Target_Physical: @agricultural_inputs6.Target_Physical, Year: @agricultural_inputs6.Year } }
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
    patch agricultural_inputs6_url(@agricultural_inputs6), params: { agricultural_inputs6: { Achievement_Financial: @agricultural_inputs6.Achievement_Financial, Achievement_Physical: @agricultural_inputs6.Achievement_Physical, Districts: @agricultural_inputs6.Districts, Target_Financial: @agricultural_inputs6.Target_Financial, Target_Physical: @agricultural_inputs6.Target_Physical, Year: @agricultural_inputs6.Year } }
    assert_redirected_to agricultural_inputs6_url(@agricultural_inputs6)
  end

  test "should destroy agricultural_inputs6" do
    assert_difference('AgriculturalInputs6.count', -1) do
      delete agricultural_inputs6_url(@agricultural_inputs6)
    end

    assert_redirected_to agricultural_inputs6s_url
  end
end
