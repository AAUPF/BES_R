require 'test_helper'

class BankingInfrastructure5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banking_infrastructure5 = banking_infrastructure5s(:one)
  end

  test "should get index" do
    get banking_infrastructure5s_url
    assert_response :success
  end

  test "should get new" do
    get new_banking_infrastructure5_url
    assert_response :success
  end

  test "should create banking_infrastructure5" do
    assert_difference('BankingInfrastructure5.count') do
      post banking_infrastructure5s_url, params: { banking_infrastructure5: { Current_Amount: @banking_infrastructure5.Current_Amount, No_of_Branches: @banking_infrastructure5.No_of_Branches, No_of_Current_Accounts: @banking_infrastructure5.No_of_Current_Accounts, No_of_Savings_Accounts: @banking_infrastructure5.No_of_Savings_Accounts, No_of_Term_Accounts: @banking_infrastructure5.No_of_Term_Accounts, No_of_Total_Accounts: @banking_infrastructure5.No_of_Total_Accounts, Savings_Amount: @banking_infrastructure5.Savings_Amount, State: @banking_infrastructure5.State, Term_Amount: @banking_infrastructure5.Term_Amount, Total_Amount: @banking_infrastructure5.Total_Amount } }
    end

    assert_redirected_to banking_infrastructure5_url(BankingInfrastructure5.last)
  end

  test "should show banking_infrastructure5" do
    get banking_infrastructure5_url(@banking_infrastructure5)
    assert_response :success
  end

  test "should get edit" do
    get edit_banking_infrastructure5_url(@banking_infrastructure5)
    assert_response :success
  end

  test "should update banking_infrastructure5" do
    patch banking_infrastructure5_url(@banking_infrastructure5), params: { banking_infrastructure5: { Current_Amount: @banking_infrastructure5.Current_Amount, No_of_Branches: @banking_infrastructure5.No_of_Branches, No_of_Current_Accounts: @banking_infrastructure5.No_of_Current_Accounts, No_of_Savings_Accounts: @banking_infrastructure5.No_of_Savings_Accounts, No_of_Term_Accounts: @banking_infrastructure5.No_of_Term_Accounts, No_of_Total_Accounts: @banking_infrastructure5.No_of_Total_Accounts, Savings_Amount: @banking_infrastructure5.Savings_Amount, State: @banking_infrastructure5.State, Term_Amount: @banking_infrastructure5.Term_Amount, Total_Amount: @banking_infrastructure5.Total_Amount } }
    assert_redirected_to banking_infrastructure5_url(@banking_infrastructure5)
  end

  test "should destroy banking_infrastructure5" do
    assert_difference('BankingInfrastructure5.count', -1) do
      delete banking_infrastructure5_url(@banking_infrastructure5)
    end

    assert_redirected_to banking_infrastructure5s_url
  end
end
