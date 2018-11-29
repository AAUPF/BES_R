require 'test_helper'

class BankingInfrastructure3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banking_infrastructure3 = banking_infrastructure3s(:one)
  end

  test "should get index" do
    get banking_infrastructure3s_url
    assert_response :success
  end

  test "should get new" do
    get new_banking_infrastructure3_url
    assert_response :success
  end

  test "should create banking_infrastructure3" do
    assert_difference('BankingInfrastructure3.count') do
      post banking_infrastructure3s_url, params: { banking_infrastructure3: { District_Central_Cooperative_Banks: @banking_infrastructure3.District_Central_Cooperative_Banks, State: @banking_infrastructure3.State, State_Cooperative_Banks: @banking_infrastructure3.State_Cooperative_Banks, Total: @banking_infrastructure3.Total, Year: @banking_infrastructure3.Year } }
    end

    assert_redirected_to banking_infrastructure3_url(BankingInfrastructure3.last)
  end

  test "should show banking_infrastructure3" do
    get banking_infrastructure3_url(@banking_infrastructure3)
    assert_response :success
  end

  test "should get edit" do
    get edit_banking_infrastructure3_url(@banking_infrastructure3)
    assert_response :success
  end

  test "should update banking_infrastructure3" do
    patch banking_infrastructure3_url(@banking_infrastructure3), params: { banking_infrastructure3: { District_Central_Cooperative_Banks: @banking_infrastructure3.District_Central_Cooperative_Banks, State: @banking_infrastructure3.State, State_Cooperative_Banks: @banking_infrastructure3.State_Cooperative_Banks, Total: @banking_infrastructure3.Total, Year: @banking_infrastructure3.Year } }
    assert_redirected_to banking_infrastructure3_url(@banking_infrastructure3)
  end

  test "should destroy banking_infrastructure3" do
    assert_difference('BankingInfrastructure3.count', -1) do
      delete banking_infrastructure3_url(@banking_infrastructure3)
    end

    assert_redirected_to banking_infrastructure3s_url
  end
end
