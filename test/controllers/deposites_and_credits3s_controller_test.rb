require 'test_helper'

class DepositesAndCredits3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deposites_and_credits3 = deposites_and_credits3s(:one)
  end

  test "should get index" do
    get deposites_and_credits3s_url
    assert_response :success
  end

  test "should get new" do
    get new_deposites_and_credits3_url
    assert_response :success
  end

  test "should create deposites_and_credits3" do
    assert_difference('DepositesAndCredits3.count') do
      post deposites_and_credits3s_url, params: { deposites_and_credits3: { Area: @deposites_and_credits3.Area, CD_Ratio: @deposites_and_credits3.CD_Ratio, Credits: @deposites_and_credits3.Credits, Deposits: @deposites_and_credits3.Deposits, ICD_Ratio: @deposites_and_credits3.ICD_Ratio, Indicator: @deposites_and_credits3.Indicator, Investment: @deposites_and_credits3.Investment } }
    end

    assert_redirected_to deposites_and_credits3_url(DepositesAndCredits3.last)
  end

  test "should show deposites_and_credits3" do
    get deposites_and_credits3_url(@deposites_and_credits3)
    assert_response :success
  end

  test "should get edit" do
    get edit_deposites_and_credits3_url(@deposites_and_credits3)
    assert_response :success
  end

  test "should update deposites_and_credits3" do
    patch deposites_and_credits3_url(@deposites_and_credits3), params: { deposites_and_credits3: { Area: @deposites_and_credits3.Area, CD_Ratio: @deposites_and_credits3.CD_Ratio, Credits: @deposites_and_credits3.Credits, Deposits: @deposites_and_credits3.Deposits, ICD_Ratio: @deposites_and_credits3.ICD_Ratio, Indicator: @deposites_and_credits3.Indicator, Investment: @deposites_and_credits3.Investment } }
    assert_redirected_to deposites_and_credits3_url(@deposites_and_credits3)
  end

  test "should destroy deposites_and_credits3" do
    assert_difference('DepositesAndCredits3.count', -1) do
      delete deposites_and_credits3_url(@deposites_and_credits3)
    end

    assert_redirected_to deposites_and_credits3s_url
  end
end
