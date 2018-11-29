require 'test_helper'

class MicroFinance1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @micro_finance1 = micro_finance1s(:one)
  end

  test "should get index" do
    get micro_finance1s_url
    assert_response :success
  end

  test "should get new" do
    get new_micro_finance1_url
    assert_response :success
  end

  test "should create micro_finance1" do
    assert_difference('MicroFinance1.count') do
      post micro_finance1s_url, params: { micro_finance1: { Bank_loans_disbursed_during_the_year: @micro_finance1.Bank_loans_disbursed_during_the_year, Number_of_SHGs_with_Bank_Linkage: @micro_finance1.Number_of_SHGs_with_Bank_Linkage, Savings_of_SHGs_with_Banks: @micro_finance1.Savings_of_SHGs_with_Banks, State: @micro_finance1.State } }
    end

    assert_redirected_to micro_finance1_url(MicroFinance1.last)
  end

  test "should show micro_finance1" do
    get micro_finance1_url(@micro_finance1)
    assert_response :success
  end

  test "should get edit" do
    get edit_micro_finance1_url(@micro_finance1)
    assert_response :success
  end

  test "should update micro_finance1" do
    patch micro_finance1_url(@micro_finance1), params: { micro_finance1: { Bank_loans_disbursed_during_the_year: @micro_finance1.Bank_loans_disbursed_during_the_year, Number_of_SHGs_with_Bank_Linkage: @micro_finance1.Number_of_SHGs_with_Bank_Linkage, Savings_of_SHGs_with_Banks: @micro_finance1.Savings_of_SHGs_with_Banks, State: @micro_finance1.State } }
    assert_redirected_to micro_finance1_url(@micro_finance1)
  end

  test "should destroy micro_finance1" do
    assert_difference('MicroFinance1.count', -1) do
      delete micro_finance1_url(@micro_finance1)
    end

    assert_redirected_to micro_finance1s_url
  end
end
