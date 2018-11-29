require 'test_helper'

class DepositesAndCredits1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deposites_and_credits1 = deposites_and_credits1s(:one)
  end

  test "should get index" do
    get deposites_and_credits1s_url
    assert_response :success
  end

  test "should get new" do
    get new_deposites_and_credits1_url
    assert_response :success
  end

  test "should create deposites_and_credits1" do
    assert_difference('DepositesAndCredits1.count') do
      post deposites_and_credits1s_url, params: { deposites_and_credits1: { 2014-15: @deposites_and_credits1.2014-15, 2015-16: @deposites_and_credits1.2015-16, Indicator: @deposites_and_credits1.Indicator, Sector: @deposites_and_credits1.Sector } }
    end

    assert_redirected_to deposites_and_credits1_url(DepositesAndCredits1.last)
  end

  test "should show deposites_and_credits1" do
    get deposites_and_credits1_url(@deposites_and_credits1)
    assert_response :success
  end

  test "should get edit" do
    get edit_deposites_and_credits1_url(@deposites_and_credits1)
    assert_response :success
  end

  test "should update deposites_and_credits1" do
    patch deposites_and_credits1_url(@deposites_and_credits1), params: { deposites_and_credits1: { 2014-15: @deposites_and_credits1.2014-15, 2015-16: @deposites_and_credits1.2015-16, Indicator: @deposites_and_credits1.Indicator, Sector: @deposites_and_credits1.Sector } }
    assert_redirected_to deposites_and_credits1_url(@deposites_and_credits1)
  end

  test "should destroy deposites_and_credits1" do
    assert_difference('DepositesAndCredits1.count', -1) do
      delete deposites_and_credits1_url(@deposites_and_credits1)
    end

    assert_redirected_to deposites_and_credits1s_url
  end
end
