require 'test_helper'

class DepositesAndCredits7sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deposites_and_credits7 = deposites_and_credits7s(:one)
  end

  test "should get index" do
    get deposites_and_credits7s_url
    assert_response :success
  end

  test "should get new" do
    get new_deposites_and_credits7_url
    assert_response :success
  end

  test "should create deposites_and_credits7" do
    assert_difference('DepositesAndCredits7.count') do
      post deposites_and_credits7s_url, params: { deposites_and_credits7: { Advance: @deposites_and_credits7.Advance, Banks: @deposites_and_credits7.Banks, CD_Ratio: @deposites_and_credits7.CD_Ratio, Deposit: @deposites_and_credits7.Deposit, Indicator: @deposites_and_credits7.Indicator, Number_of_branches: @deposites_and_credits7.Number_of_branches } }
    end

    assert_redirected_to deposites_and_credits7_url(DepositesAndCredits7.last)
  end

  test "should show deposites_and_credits7" do
    get deposites_and_credits7_url(@deposites_and_credits7)
    assert_response :success
  end

  test "should get edit" do
    get edit_deposites_and_credits7_url(@deposites_and_credits7)
    assert_response :success
  end

  test "should update deposites_and_credits7" do
    patch deposites_and_credits7_url(@deposites_and_credits7), params: { deposites_and_credits7: { Advance: @deposites_and_credits7.Advance, Banks: @deposites_and_credits7.Banks, CD_Ratio: @deposites_and_credits7.CD_Ratio, Deposit: @deposites_and_credits7.Deposit, Indicator: @deposites_and_credits7.Indicator, Number_of_branches: @deposites_and_credits7.Number_of_branches } }
    assert_redirected_to deposites_and_credits7_url(@deposites_and_credits7)
  end

  test "should destroy deposites_and_credits7" do
    assert_difference('DepositesAndCredits7.count', -1) do
      delete deposites_and_credits7_url(@deposites_and_credits7)
    end

    assert_redirected_to deposites_and_credits7s_url
  end
end
