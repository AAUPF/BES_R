require 'test_helper'

class DepositesAndCredits2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deposites_and_credits2 = deposites_and_credits2s(:one)
  end

  test "should get index" do
    get deposites_and_credits2s_url
    assert_response :success
  end

  test "should get new" do
    get new_deposites_and_credits2_url
    assert_response :success
  end

  test "should create deposites_and_credits2" do
    assert_difference('DepositesAndCredits2.count') do
      post deposites_and_credits2s_url, params: { deposites_and_credits2: { CD_Ratio: @deposites_and_credits2.CD_Ratio, Credit: @deposites_and_credits2.Credit, Deposit: @deposites_and_credits2.Deposit, Year: @deposites_and_credits2.Year, state: @deposites_and_credits2.state } }
    end

    assert_redirected_to deposites_and_credits2_url(DepositesAndCredits2.last)
  end

  test "should show deposites_and_credits2" do
    get deposites_and_credits2_url(@deposites_and_credits2)
    assert_response :success
  end

  test "should get edit" do
    get edit_deposites_and_credits2_url(@deposites_and_credits2)
    assert_response :success
  end

  test "should update deposites_and_credits2" do
    patch deposites_and_credits2_url(@deposites_and_credits2), params: { deposites_and_credits2: { CD_Ratio: @deposites_and_credits2.CD_Ratio, Credit: @deposites_and_credits2.Credit, Deposit: @deposites_and_credits2.Deposit, Year: @deposites_and_credits2.Year, state: @deposites_and_credits2.state } }
    assert_redirected_to deposites_and_credits2_url(@deposites_and_credits2)
  end

  test "should destroy deposites_and_credits2" do
    assert_difference('DepositesAndCredits2.count', -1) do
      delete deposites_and_credits2_url(@deposites_and_credits2)
    end

    assert_redirected_to deposites_and_credits2s_url
  end
end
