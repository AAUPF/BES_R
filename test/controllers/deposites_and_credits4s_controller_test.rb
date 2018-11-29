require 'test_helper'

class DepositesAndCredits4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deposites_and_credits4 = deposites_and_credits4s(:one)
  end

  test "should get index" do
    get deposites_and_credits4s_url
    assert_response :success
  end

  test "should get new" do
    get new_deposites_and_credits4_url
    assert_response :success
  end

  test "should create deposites_and_credits4" do
    assert_difference('DepositesAndCredits4.count') do
      post deposites_and_credits4s_url, params: { deposites_and_credits4: { As_per_Sanction: @deposites_and_credits4.As_per_Sanction, As_per_Utilization: @deposites_and_credits4.As_per_Utilization, State: @deposites_and_credits4.State, Year: @deposites_and_credits4.Year } }
    end

    assert_redirected_to deposites_and_credits4_url(DepositesAndCredits4.last)
  end

  test "should show deposites_and_credits4" do
    get deposites_and_credits4_url(@deposites_and_credits4)
    assert_response :success
  end

  test "should get edit" do
    get edit_deposites_and_credits4_url(@deposites_and_credits4)
    assert_response :success
  end

  test "should update deposites_and_credits4" do
    patch deposites_and_credits4_url(@deposites_and_credits4), params: { deposites_and_credits4: { As_per_Sanction: @deposites_and_credits4.As_per_Sanction, As_per_Utilization: @deposites_and_credits4.As_per_Utilization, State: @deposites_and_credits4.State, Year: @deposites_and_credits4.Year } }
    assert_redirected_to deposites_and_credits4_url(@deposites_and_credits4)
  end

  test "should destroy deposites_and_credits4" do
    assert_difference('DepositesAndCredits4.count', -1) do
      delete deposites_and_credits4_url(@deposites_and_credits4)
    end

    assert_redirected_to deposites_and_credits4s_url
  end
end
