require 'test_helper'

class DepositesAndCredits5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deposites_and_credits5 = deposites_and_credits5s(:one)
  end

  test "should get index" do
    get deposites_and_credits5s_url
    assert_response :success
  end

  test "should get new" do
    get new_deposites_and_credits5_url
    assert_response :success
  end

  test "should create deposites_and_credits5" do
    assert_difference('DepositesAndCredits5.count') do
      post deposites_and_credits5s_url, params: { deposites_and_credits5: { CD_Ratio: @deposites_and_credits5.CD_Ratio, District: @deposites_and_credits5.District, Year: @deposites_and_credits5.Year } }
    end

    assert_redirected_to deposites_and_credits5_url(DepositesAndCredits5.last)
  end

  test "should show deposites_and_credits5" do
    get deposites_and_credits5_url(@deposites_and_credits5)
    assert_response :success
  end

  test "should get edit" do
    get edit_deposites_and_credits5_url(@deposites_and_credits5)
    assert_response :success
  end

  test "should update deposites_and_credits5" do
    patch deposites_and_credits5_url(@deposites_and_credits5), params: { deposites_and_credits5: { CD_Ratio: @deposites_and_credits5.CD_Ratio, District: @deposites_and_credits5.District, Year: @deposites_and_credits5.Year } }
    assert_redirected_to deposites_and_credits5_url(@deposites_and_credits5)
  end

  test "should destroy deposites_and_credits5" do
    assert_difference('DepositesAndCredits5.count', -1) do
      delete deposites_and_credits5_url(@deposites_and_credits5)
    end

    assert_redirected_to deposites_and_credits5s_url
  end
end
