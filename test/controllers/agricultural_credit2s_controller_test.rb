require 'test_helper'

class AgriculturalCredit2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agricultural_credit2 = agricultural_credit2s(:one)
  end

  test "should get index" do
    get agricultural_credit2s_url
    assert_response :success
  end

  test "should get new" do
    get new_agricultural_credit2_url
    assert_response :success
  end

  test "should create agricultural_credit2" do
    assert_difference('AgriculturalCredit2.count') do
      post agricultural_credit2s_url, params: { agricultural_credit2: { Achievement: @agricultural_credit2.Achievement, Achievement_Colour: @agricultural_credit2.Achievement_Colour, Districts: @agricultural_credit2.Districts, Target: @agricultural_credit2.Target, Target_Colour: @agricultural_credit2.Target_Colour, Year: @agricultural_credit2.Year } }
    end

    assert_redirected_to agricultural_credit2_url(AgriculturalCredit2.last)
  end

  test "should show agricultural_credit2" do
    get agricultural_credit2_url(@agricultural_credit2)
    assert_response :success
  end

  test "should get edit" do
    get edit_agricultural_credit2_url(@agricultural_credit2)
    assert_response :success
  end

  test "should update agricultural_credit2" do
    patch agricultural_credit2_url(@agricultural_credit2), params: { agricultural_credit2: { Achievement: @agricultural_credit2.Achievement, Achievement_Colour: @agricultural_credit2.Achievement_Colour, Districts: @agricultural_credit2.Districts, Target: @agricultural_credit2.Target, Target_Colour: @agricultural_credit2.Target_Colour, Year: @agricultural_credit2.Year } }
    assert_redirected_to agricultural_credit2_url(@agricultural_credit2)
  end

  test "should destroy agricultural_credit2" do
    assert_difference('AgriculturalCredit2.count', -1) do
      delete agricultural_credit2_url(@agricultural_credit2)
    end

    assert_redirected_to agricultural_credit2s_url
  end
end
