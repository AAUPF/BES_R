require 'test_helper'

class AgriculturalCredit1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agricultural_credit1 = agricultural_credit1s(:one)
  end

  test "should get index" do
    get agricultural_credit1s_url
    assert_response :success
  end

  test "should get new" do
    get new_agricultural_credit1_url
    assert_response :success
  end

  test "should create agricultural_credit1" do
    assert_difference('AgriculturalCredit1.count') do
      post agricultural_credit1s_url, params: { agricultural_credit1: { CCBs_Achievement: @agricultural_credit1.CCBs_Achievement, CCBs_Target: @agricultural_credit1.CCBs_Target, Commercial_Bank_Achievement: @agricultural_credit1.Commercial_Bank_Achievement, Commercial_Bank_Target: @agricultural_credit1.Commercial_Bank_Target, RRBs_Achievement: @agricultural_credit1.RRBs_Achievement, RRBs_Target: @agricultural_credit1.RRBs_Target, Total_Achievement: @agricultural_credit1.Total_Achievement, Total_Target: @agricultural_credit1.Total_Target, Year: @agricultural_credit1.Year } }
    end

    assert_redirected_to agricultural_credit1_url(AgriculturalCredit1.last)
  end

  test "should show agricultural_credit1" do
    get agricultural_credit1_url(@agricultural_credit1)
    assert_response :success
  end

  test "should get edit" do
    get edit_agricultural_credit1_url(@agricultural_credit1)
    assert_response :success
  end

  test "should update agricultural_credit1" do
    patch agricultural_credit1_url(@agricultural_credit1), params: { agricultural_credit1: { CCBs_Achievement: @agricultural_credit1.CCBs_Achievement, CCBs_Target: @agricultural_credit1.CCBs_Target, Commercial_Bank_Achievement: @agricultural_credit1.Commercial_Bank_Achievement, Commercial_Bank_Target: @agricultural_credit1.Commercial_Bank_Target, RRBs_Achievement: @agricultural_credit1.RRBs_Achievement, RRBs_Target: @agricultural_credit1.RRBs_Target, Total_Achievement: @agricultural_credit1.Total_Achievement, Total_Target: @agricultural_credit1.Total_Target, Year: @agricultural_credit1.Year } }
    assert_redirected_to agricultural_credit1_url(@agricultural_credit1)
  end

  test "should destroy agricultural_credit1" do
    assert_difference('AgriculturalCredit1.count', -1) do
      delete agricultural_credit1_url(@agricultural_credit1)
    end

    assert_redirected_to agricultural_credit1s_url
  end
end
